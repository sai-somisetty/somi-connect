import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/theme.dart';
import '../../../l10n/app_strings.dart';
import '../../../models/isar/isar_collections.dart';
import '../../../providers/storage_provider.dart';
import '../../../providers/language_provider.dart';
import '../../../providers/selected_student_provider.dart';
import '../../../providers/ui_tick_provider.dart';
import '../../../services/api_service.dart';
import '../../../widgets/widgets.dart';

class ExamTab extends ConsumerWidget {
  const ExamTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storage = ref.watch(storageProvider);
    final sid = ref.watch(selectedStudentIdProvider);
    final lang = ref.watch(languageProvider);
    ref.watch(realtimeTickProvider);

    final sessions = storage
        .allExamSessionsSync()
        .where((e) => sid != null && e.studentId == sid)
        .toList()
      ..sort((a, b) => (b.startedAt ?? DateTime(1970)).compareTo(a.startedAt ?? DateTime(1970)));

    ExamSessionIsar? active;
    for (final s in sessions) {
      final st = s.status.toLowerCase();
      if (st != 'completed' && st != 'submitted' && st != 'ended') {
        active = s;
        break;
      }
    }

    final anomalies = storage
        .allAnomaliesSync()
        .where((a) => sid != null && a.studentId == sid)
        .toList()
      ..sort((a, b) => (b.createdAt ?? DateTime(1970)).compareTo(a.createdAt ?? DateTime(1970)));

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      children: [
        if (active == null)
          EmptyState(
            icon: Icons.spa_outlined,
            message: lang == AppLanguage.telugu
                ? 'Eppudu pariksha ledu. Mee pillalu exam start chesthe ikkada live status kanipistundi.'
                : AppStrings.noExam(lang),
            messageTelugu: lang == AppLanguage.telugu,
          )
        else
          _ActiveExamCard(session: active, lang: lang),
        const SizedBox(height: AppTheme.sectionGap),
        SomiHeader(title: 'Anomaly alerts'),
        if (anomalies.isEmpty)
          SomiCard(
            leftBorderColor: AppTheme.success,
            child: Row(
              children: [
                const Icon(Icons.verified_user_rounded, color: Color(0xFF276749)),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'No suspicious activity detected.',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          )
        else
          ...anomalies.take(10).map((a) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: _AnomalyCard(anomaly: a),
              )),
      ],
    );
  }
}

class _ActiveExamCard extends ConsumerWidget {
  const _ActiveExamCard({required this.session, required this.lang});

  final ExamSessionIsar session;
  final AppLanguage lang;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final total = session.totalQuestions ?? 0;
    final answered = session.answeredCount ?? 0;
    final st = session.status.toLowerCase();
    final awaitingPin = st.contains('pin') || st == 'awaiting_pin';

    return SomiCard(
      leftBorderColor: AppTheme.danger,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  session.examType,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              _StatusChip(status: session.status),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Started: ${session.startedAt ?? '—'}',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          if (session.kioskLocked)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text('Kiosk locked', style: Theme.of(context).textTheme.bodySmall),
            ),
          const SizedBox(height: 12),
          Text(
            '$answered / $total questions',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: total > 0 ? answered / total : null,
              minHeight: 10,
              color: AppTheme.orange,
              backgroundColor: AppTheme.textSecondary.withValues(alpha: 0.12),
            ),
          ),
          if (awaitingPin) ...[
            const SizedBox(height: 20),
            SomiButton(
              label: AppStrings.enterPinSubmit(lang),
              onPressed: () => _showPinDialog(context, ref),
            ),
          ],
        ],
      ),
    );
  }

  Future<void> _showPinDialog(BuildContext context, WidgetRef ref) async {
    final pinCtrl = TextEditingController();
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Parent PIN'),
        content: TextField(
          controller: pinCtrl,
          keyboardType: TextInputType.number,
          obscureText: true,
          maxLength: 6,
          decoration: const InputDecoration(counterText: ''),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('Cancel')),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Submit'),
          ),
        ],
      ),
    );
    if (ok == true && context.mounted) {
      try {
        await ref.read(apiServiceProvider).submitExamPin(
              sessionId: session.apiId,
              pin: pinCtrl.text.trim(),
            );
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('PIN submitted')),
          );
        }
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(e.toString())),
          );
        }
      }
    }
    pinCtrl.dispose();
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.status});

  final String status;

  @override
  Widget build(BuildContext context) {
    final s = status.toLowerCase();
    Color c = AppTheme.navy;
    if (s.contains('lock')) c = AppTheme.orange;
    if (s.contains('pin')) c = AppTheme.danger;
    return Chip(
      label: Text(status),
      backgroundColor: c.withValues(alpha: 0.15),
      side: BorderSide.none,
    );
  }
}

class _AnomalyCard extends StatelessWidget {
  const _AnomalyCard({required this.anomaly});

  final AnomalyIsar anomaly;

  @override
  Widget build(BuildContext context) {
    final sev = anomaly.severity.toLowerCase();
    final border = sev.contains('high') || sev.contains('critical')
        ? AppTheme.danger
        : AppTheme.orange;
    return SomiCard(
      leftBorderColor: border,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(anomaly.anomalyType, style: Theme.of(context).textTheme.titleSmall),
        subtitle: Text(anomaly.details ?? anomaly.severity),
        trailing: Text(
          anomaly.createdAt?.toString() ?? '',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
