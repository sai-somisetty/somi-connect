import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';
import '../../../models/isar/isar_collections.dart';
import '../../../providers/storage_provider.dart';
import '../../../storage/storage_interface.dart';
import '../../../providers/selected_student_provider.dart';
import '../../../providers/ui_tick_provider.dart';
import '../../../services/sync_service.dart';
import '../../../config/theme.dart';

class TodayTab extends ConsumerWidget {
  const TodayTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storage = ref.watch(storageProvider);
    final sid = ref.watch(selectedStudentIdProvider);
    ref.watch(realtimeTickProvider);

    return FutureBuilder<DateTime?>(
      future: ref.read(syncServiceProvider).lastSyncedAt,
      builder: (context, snap) {
        final last = snap.data;
        final rel = last != null
            ? DateFormat.Hm().add_yMMMd().format(last)
            : '—';

        return RefreshIndicator(
          onRefresh: () async {
            if (sid != null) {
              await ref.read(syncServiceProvider).pullFromServer(sid);
            }
          },
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Chip(
                  avatar: const Icon(Icons.cloud_done, size: 18),
                  label: Text('Updated $rel'),
                ),
              ),
              const SizedBox(height: 8),
              _StreakCard(storage: storage, studentId: sid),
              const SizedBox(height: 16),
              _StudyTodayCard(storage: storage, studentId: sid),
              const SizedBox(height: 16),
              _QuizCountCard(storage: storage, studentId: sid),
              const SizedBox(height: 24),
              Text(
                'Recent quizzes',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              _RecentScores(storage: storage, studentId: sid),
            ],
          ),
        );
      },
    );
  }
}

class _StreakCard extends StatelessWidget {
  const _StreakCard({required this.storage, required this.studentId});

  final StorageInterface storage;
  final String? studentId;

  @override
  Widget build(BuildContext context) {
    StreakIsar? streak;
    if (studentId != null) {
      for (final s in storage.allStreaksSync()) {
        if (s.studentId == studentId) {
          streak = s;
          break;
        }
      }
    }

    final cur = streak?.currentStreak ?? 0;
    final max = streak?.maxStreak ?? 0;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            const Text('🔥', style: TextStyle(fontSize: 40)),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Streak', style: Theme.of(context).textTheme.titleMedium),
                Text(
                  '$cur days (best $max)',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _StudyTodayCard extends StatelessWidget {
  const _StudyTodayCard({required this.storage, required this.studentId});

  final StorageInterface storage;
  final String? studentId;

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final start = DateTime(today.year, today.month, today.day);
    var minutes = 0;
    if (studentId != null) {
      final acts = storage.allStudyActivitiesSync();
      for (final a in acts) {
        if (a.studentId != studentId) continue;
        if (a.activityDate.isBefore(start)) continue;
        minutes += a.durationMinutes ?? 0;
      }
    }
    final h = minutes ~/ 60;
    final m = minutes % 60;

    return Card(
      color: AppTheme.surfaceLight,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Today's study time", style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(
              '${h}h ${m}m',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: AppTheme.primaryDeepBlue,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class _QuizCountCard extends StatelessWidget {
  const _QuizCountCard({required this.storage, required this.studentId});

  final StorageInterface storage;
  final String? studentId;

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final start = DateTime(today.year, today.month, today.day);
    var count = 0;
    if (studentId != null) {
      final qs = storage.allQuizScoresSync();
      for (final q in qs) {
        if (q.studentId != studentId) continue;
        final c = q.createdAt;
        if (c == null || c.isBefore(start)) continue;
        count++;
      }
    }

    return ListTile(
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      title: const Text("Today's quizzes taken"),
      trailing: Text(
        '$count',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}

class _RecentScores extends StatelessWidget {
  const _RecentScores({required this.storage, required this.studentId});

  final StorageInterface storage;
  final String? studentId;

  @override
  Widget build(BuildContext context) {
    if (studentId == null) {
      return const Text('Link a student to see scores.');
    }
    final all = storage
        .allQuizScoresSync()
        .where((q) => q.studentId == studentId)
        .toList()
      ..sort((a, b) => (b.createdAt ?? DateTime(1970)).compareTo(a.createdAt ?? DateTime(1970)));
    final last5 = all.take(5).toList();
    if (last5.isEmpty) {
      return const Text('No quiz scores yet.');
    }

    final maxTotal = last5.map((e) => e.total ?? 1).reduce((a, b) => a > b ? a : b);

    return SizedBox(
      height: 200,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: maxTotal.toDouble(),
          barGroups: [
            for (var i = 0; i < last5.length; i++)
              BarChartGroupData(
                x: i,
                barRods: [
                  BarChartRodData(
                    toY: (last5[i].score ?? 0).toDouble(),
                    color: AppTheme.accentWarmOrange,
                    width: 18,
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(6)),
                  ),
                ],
              ),
          ],
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (v, _) => Text('Q${v.toInt() + 1}'),
              ),
            ),
            leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: true, reservedSize: 28)),
            topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(show: false),
        ),
      ),
    );
  }
}
