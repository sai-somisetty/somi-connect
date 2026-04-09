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

class ExamTab extends ConsumerWidget {
  const ExamTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storage = ref.watch(storageProvider);
    final sid = ref.watch(selectedStudentIdProvider);
    final lang = ref.watch(languageProvider);
    ref.watch(realtimeTickProvider);

    if (sid == null) {
      return const Center(child: Text('Link a student to monitor exams.'));
    }

    final sessions = storage
        .allExamSessionsSync()
        .where((e) => e.studentId == sid)
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
        .where((a) => a.studentId == sid)
        .toList()
      ..sort((a, b) => (b.createdAt ?? DateTime(1970)).compareTo(a.createdAt ?? DateTime(1970)));

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (active == null)
          Card(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  Icon(Icons.spa_outlined, size: 72, color: Colors.blue.shade200),
                  const SizedBox(height: 16),
                  Text(
                    AppStrings.noExam(lang),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          )
        else
          _ActiveExamCard(session: active, lang: lang),
        const SizedBox(height: 24),
        Text('Anomaly alerts', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 8),
        if (anomalies.isEmpty)
          const Text('No issues flagged.')
        else
          ...anomalies.take(10).map((a) => _AnomalyCard(anomaly: a)),
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

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(20),
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
            Text('Started: ${session.startedAt ?? '—'}'),
            if (session.kioskLocked) const Text('Kiosk locked'),
            const SizedBox(height: 12),
            Text('$answered / $total questions answered'),
            LinearProgressIndicator(
              value: total > 0 ? answered / total : null,
            ),
            if (awaitingPin) ...[
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _showPinDialog(context, ref),
                  child: Text(AppStrings.enterPinSubmit(lang)),
                ),
              ),
            ],
          ],
        ),
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
    Color c = AppTheme.primaryDeepBlue;
    if (s.contains('lock')) c = AppTheme.accentWarmOrange;
    if (s.contains('pin')) c = Colors.deepPurple;
    return Chip(
      label: Text(status),
      backgroundColor: c.withValues(alpha: 0.15),
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
        ? Colors.red.shade700
        : Colors.red.shade300;
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: border, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        title: Text(anomaly.anomalyType),
        subtitle: Text(anomaly.details ?? anomaly.severity),
        trailing: Text(anomaly.createdAt?.toString() ?? ''),
      ),
    );
  }
}
