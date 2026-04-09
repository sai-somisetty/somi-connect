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
import '../../../services/sync_service.dart';

class HealthTab extends ConsumerWidget {
  const HealthTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storage = ref.watch(storageProvider);
    final sid = ref.watch(selectedStudentIdProvider);
    final lang = ref.watch(languageProvider);
    ref.watch(realtimeTickProvider);

    if (sid == null) {
      return const Center(child: Text('Link a student to see health data.'));
    }

    final records = storage
        .allHealthRecordsSync()
        .where((h) => h.studentId == sid)
        .toList()
      ..sort((a, b) => (b.recordDate ?? DateTime(1970)).compareTo(a.recordDate ?? DateTime(1970)));

    final latest = records.isNotEmpty ? records.first : null;

    final sixMonthsAgo = DateTime.now().subtract(const Duration(days: 183));
    final needsCheckup = latest == null ||
        latest.recordDate == null ||
        latest.recordDate!.isBefore(sixMonthsAgo);

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (latest != null)
            _VitalsCard(record: latest)
          else
            const Card(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Text('No health records yet.'),
              ),
            ),
          const SizedBox(height: 16),
          if (latest != null) _VitaminCard(record: latest),
          const SizedBox(height: 16),
          const _CorrelationHint(),
          if (needsCheckup) ...[
            const SizedBox(height: 16),
            const Card(
              color: Color(0xFFFFF3E0),
              child: ListTile(
                leading: Icon(Icons.event, color: AppTheme.accentWarmOrange),
                title: Text('Next checkup due'),
                subtitle: Text('More than 6 months since the last record.'),
              ),
            ),
          ],
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _openForm(context, ref, sid),
        icon: const Icon(Icons.add),
        label: Text(AppStrings.addHealthRecord(lang)),
      ),
    );
  }
}

class _VitalsCard extends StatelessWidget {
  const _VitalsCard({required this.record});

  final HealthRecordIsar record;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Latest vitals', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 12),
            Text('Height: ${record.heightCm?.toStringAsFixed(1) ?? '—'} cm'),
            Text('Weight: ${record.weightKg?.toStringAsFixed(1) ?? '—'} kg'),
            Text('BMI: ${record.bmi?.toStringAsFixed(1) ?? '—'}'),
          ],
        ),
      ),
    );
  }
}

class _VitaminCard extends StatelessWidget {
  const _VitaminCard({required this.record});

  final HealthRecordIsar record;

  static Color _levelColor(double? v, {required double low, double? high}) {
    if (v == null) return Colors.grey;
    if (v < low) return Colors.red.shade700;
    if (high != null && v > high) return Colors.green.shade600;
    return Colors.amber.shade800;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Vitamins & iron', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            _row('B12', record.vitaminB12, _levelColor(record.vitaminB12, low: 200)),
            _row('D3', record.vitaminD3, _levelColor(record.vitaminD3, low: 20, high: 100)),
            _row('Iron', record.ironLevel, _levelColor(record.ironLevel, low: 60)),
          ],
        ),
      ),
    );
  }

  Widget _row(String label, double? v, Color c) {
    return ListTile(
      dense: true,
      title: Text(label),
      trailing: Text(
        v?.toStringAsFixed(1) ?? '—',
        style: TextStyle(color: c, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _CorrelationHint extends StatelessWidget {
  const _CorrelationHint();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.shade50,
      child: const ListTile(
        leading: Icon(Icons.lightbulb_outline),
        title: Text('Health correlations'),
        subtitle: Text('Low B12 may be affecting focus — discuss with your doctor.'),
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
          left: 16,
          right: 16,
          top: 16,
          bottom: MediaQuery.of(ctx).viewInsets.bottom + 16,
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
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: const Text('Save'),
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
