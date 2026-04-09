import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../config/theme.dart';
import '../../../l10n/app_strings.dart';
import '../../../models/isar/isar_collections.dart';
import '../../../providers/storage_provider.dart';
import '../../../providers/language_provider.dart';
import '../../../providers/selected_student_provider.dart';
import '../../../providers/ui_tick_provider.dart';
import '../../../services/api_service.dart';
import '../../../services/sync_service.dart';
import '../../../widgets/widgets.dart';

class HealthTab extends ConsumerWidget {
  const HealthTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storage = ref.watch(storageProvider);
    final sid = ref.watch(selectedStudentIdProvider);
    final lang = ref.watch(languageProvider);
    ref.watch(realtimeTickProvider);

    final List<HealthRecordIsar> records;
    if (sid == null) {
      records = [];
    } else {
      records = storage.allHealthRecordsSync().where((h) => h.studentId == sid).toList()
        ..sort((a, b) => (b.recordDate ?? DateTime(1970)).compareTo(a.recordDate ?? DateTime(1970)));
    }

    final latest = records.isNotEmpty ? records.first : null;

    final sixMonthsAgo = DateTime.now().subtract(const Duration(days: 183));
    final needsCheckup = latest == null ||
        latest.recordDate == null ||
        latest.recordDate!.isBefore(sixMonthsAgo);

    return Scaffold(
      backgroundColor: AppTheme.background,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: [
          if (latest != null)
            _VitalsCard(record: latest)
          else
            const _EmptyVitalsCard(),
          const SizedBox(height: AppTheme.sectionGap),
          if (latest != null)
            _VitaminCard(record: latest)
          else
            const _EmptyVitaminCard(),
          const SizedBox(height: AppTheme.sectionGap),
          const _CorrelationHint(),
          if (needsCheckup) ...[
            const SizedBox(height: AppTheme.sectionGap),
            SomiCard(
              leftBorderColor: AppTheme.warning,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.event_available_rounded, color: AppTheme.orange, size: 32),
                title: Text(
                  'Next checkup due',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                subtitle: Text(
                  latest == null
                      ? 'Health record add chesaka reminders set avuthayi.'
                      : 'More than 6 months since the last record.',
                ),
              ),
            ),
          ],
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          if (sid == null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: TenglishText(
                  'Mundu pillani link cheyandi — health record save cheyataniki.',
                  style: AppTheme.teluguStyle(fontSize: 15, color: Colors.white),
                ),
                action: SnackBarAction(
                  label: 'Link',
                  textColor: Colors.white,
                  onPressed: () => context.push('/profile-setup'),
                ),
              ),
            );
            return;
          }
          _openForm(context, ref, sid);
        },
        icon: const Icon(Icons.add),
        label: Text(AppStrings.addHealthRecord(lang)),
      ),
    );
  }
}

class _EmptyVitalsCard extends StatelessWidget {
  const _EmptyVitalsCard();

  @override
  Widget build(BuildContext context) {
    return SomiCard(
      leftBorderColor: AppTheme.navy,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.local_hospital_outlined, color: AppTheme.navy),
              const SizedBox(width: 10),
              Text('Physical health 🏥', style: Theme.of(context).textTheme.titleLarge),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: StatCard(
                  value: '—',
                  label: 'Height (cm)',
                  valueColor: AppTheme.textSecondary,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: StatCard(
                  value: '—',
                  label: 'Weight (kg)',
                  valueColor: AppTheme.textSecondary,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: StatCard(
                  value: '—',
                  label: 'BMI',
                  valueColor: AppTheme.textSecondary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          TenglishText(
            'Health records add cheyandi',
            style: AppTheme.teluguStyle(fontSize: 15, color: AppTheme.textSecondary),
          ),
        ],
      ),
    );
  }
}

class _EmptyVitaminCard extends StatelessWidget {
  const _EmptyVitaminCard();

  @override
  Widget build(BuildContext context) {
    final track = AppTheme.textSecondary.withValues(alpha: 0.15);
    return SomiCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Vitamin levels 💊', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          for (final label in ['B12', 'D3', 'Iron']) ...[
            Text(label, style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 6),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: null,
                minHeight: 10,
                backgroundColor: track,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6, bottom: 12),
              child: Text(
                '—',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppTheme.textSecondary),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _VitalsCard extends StatelessWidget {
  const _VitalsCard({required this.record});

  final HealthRecordIsar record;

  Color _bmiColor(double? bmi) {
    if (bmi == null) return AppTheme.textSecondary;
    if (bmi < 18.5 || bmi > 30) return AppTheme.danger;
    if (bmi >= 25) return AppTheme.warning;
    return AppTheme.success;
  }

  @override
  Widget build(BuildContext context) {
    final bmi = record.bmi;
    return SomiCard(
      leftBorderColor: AppTheme.navy,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.local_hospital_outlined, color: AppTheme.navy),
              const SizedBox(width: 10),
              Text('Physical health 🏥', style: Theme.of(context).textTheme.titleLarge),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: StatCard(
                  value: record.heightCm?.toStringAsFixed(0) ?? '—',
                  label: 'Height (cm)',
                  valueColor: AppTheme.navy,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: StatCard(
                  value: record.weightKg?.toStringAsFixed(1) ?? '—',
                  label: 'Weight (kg)',
                  valueColor: AppTheme.orange,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: StatCard(
                  value: record.bmi?.toStringAsFixed(1) ?? '—',
                  label: 'BMI',
                  valueColor: _bmiColor(bmi),
                ),
              ),
            ],
          ),
          if (record.recordDate != null) ...[
            const SizedBox(height: 16),
            Text(
              'Last updated: ${record.recordDate!.toLocal().toString().split(' ').first}',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
            ),
          ],
        ],
      ),
    );
  }
}

class _VitaminCard extends StatelessWidget {
  const _VitaminCard({required this.record});

  final HealthRecordIsar record;

  static Color _levelColor(double? v, {required double low, double? high}) {
    if (v == null) return AppTheme.textSecondary;
    if (v < low) return AppTheme.danger;
    if (high != null && v > high) return AppTheme.success;
    return AppTheme.warning;
  }

  @override
  Widget build(BuildContext context) {
    return SomiCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Vitamin levels 💊', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          _vitaminRow(context, 'B12', record.vitaminB12, _levelColor(record.vitaminB12, low: 200)),
          _vitaminRow(context, 'D3', record.vitaminD3, _levelColor(record.vitaminD3, low: 20, high: 100)),
          _vitaminRow(context, 'Iron', record.ironLevel, _levelColor(record.ironLevel, low: 60)),
        ],
      ),
    );
  }

  Widget _vitaminRow(BuildContext context, String label, double? v, Color c) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(label, style: Theme.of(context).textTheme.titleSmall),
          ),
          Expanded(
            flex: 3,
            child: Text(
              v?.toStringAsFixed(1) ?? '—',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(color: c, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}

class _CorrelationHint extends StatelessWidget {
  const _CorrelationHint();

  @override
  Widget build(BuildContext context) {
    return SomiCard(
      leftBorderColor: AppTheme.navy.withValues(alpha: 0.35),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Icon(Icons.lightbulb_outline_rounded, color: AppTheme.navy.withValues(alpha: 0.8)),
        title: Text('Health correlations', style: Theme.of(context).textTheme.titleSmall),
        subtitle: const TenglishText(
          'Takkuva B12 focus ni affect cheyagaladu — doctor ni consult cheyandi.',
        ),
      ),
    );
  }
}

Future<void> _openForm(BuildContext context, WidgetRef ref, String studentId) async {
  final heightCtrl = TextEditingController();
  final weightCtrl = TextEditingController();
  final b12Ctrl = TextEditingController();
  final d3Ctrl = TextEditingController();
  final ironCtrl = TextEditingController();

  final ok = await showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    builder: (ctx) {
      return Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: MediaQuery.of(ctx).viewInsets.bottom + 20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: heightCtrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Height (cm)'),
            ),
            TextField(
              controller: weightCtrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Weight (kg)'),
            ),
            TextField(
              controller: b12Ctrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'B12 (optional)'),
            ),
            TextField(
              controller: d3Ctrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'D3 (optional)'),
            ),
            TextField(
              controller: ironCtrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Iron (optional)'),
            ),
            const SizedBox(height: 20),
            SomiButton(
              label: 'Save',
              onPressed: () => Navigator.pop(ctx, true),
            ),
          ],
        ),
      );
    },
  );

  if (ok == true && context.mounted) {
    try {
      final h = double.tryParse(heightCtrl.text);
      final w = double.tryParse(weightCtrl.text);
      final bmi = (h != null && w != null && h > 0) ? w / ((h / 100) * (h / 100)) : null;
      await ref.read(apiServiceProvider).postHealthRecord({
        'student_id': studentId,
        'record_type': 'manual',
        'record_date': DateTime.now().toIso8601String(),
        'height_cm': h,
        'weight_kg': w,
        'bmi': bmi,
        'vitamin_b12': double.tryParse(b12Ctrl.text),
        'vitamin_d3': double.tryParse(d3Ctrl.text),
        'iron_level': double.tryParse(ironCtrl.text),
      });
      await ref.read(syncServiceProvider).pullFromServer(studentId);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Saved')));
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
      }
    }
  }

  heightCtrl.dispose();
  weightCtrl.dispose();
  b12Ctrl.dispose();
  d3Ctrl.dispose();
  ironCtrl.dispose();
}
