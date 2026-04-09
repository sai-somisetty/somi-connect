import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../config/theme.dart';
import '../../../models/isar/isar_collections.dart';
import '../../../providers/college_log_provider.dart';
import '../../../providers/storage_provider.dart';
import '../../../providers/today_remote_provider.dart';
import '../../../storage/storage_interface.dart';
import '../../../providers/selected_student_provider.dart';
import '../../../providers/ui_tick_provider.dart';
import '../../../services/sync_service.dart';
import '../../../widgets/widgets.dart';

/// Telugu short weekday labels (Mon → Sun) for the weekly chart.
const _weekdayTe = ['సో', 'మ', 'బు', 'గు', 'శు', 'శ', 'ఆ'];

class TodayTab extends ConsumerStatefulWidget {
  const TodayTab({super.key});

  @override
  ConsumerState<TodayTab> createState() => _TodayTabState();
}

class _TodayTabState extends ConsumerState<TodayTab> {
  bool _linkBannerDismissed = false;

  @override
  Widget build(BuildContext context) {
    final storage = ref.watch(storageProvider);
    final sid = ref.watch(selectedStudentIdProvider);
    ref.watch(realtimeTickProvider);

    final parentNameAsync = ref.watch(parentDisplayNameProvider);
    final parentName = parentNameAsync.valueOrNull;

    final remoteAsync = sid != null ? ref.watch(todayRemoteProvider(sid)) : null;
    final dash = TodayDashboardFields.parse(remoteAsync?.valueOrNull?.dashboard);

    return FutureBuilder<DateTime?>(
      future: ref.read(syncServiceProvider).lastSyncedAt,
      builder: (context, snap) {
        final last = snap.data;
        final student = sid != null ? storage.studentByApiIdSync(sid) : null;

        return RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(parentDisplayNameProvider);
            if (sid != null) {
              ref.invalidate(todayRemoteProvider(sid));
              ref.invalidate(collegeLogTodayProvider(sid));
              ref.invalidate(collegeLogWeekProvider(sid));
              await ref.read(syncServiceProvider).pullFromServer(sid);
            }
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Synced!')),
              );
            }
          },
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            children: [
              if (sid == null && !_linkBannerDismissed) ...[
                LinkStudentBanner(
                  onDismiss: () => setState(() => _linkBannerDismissed = true),
                ),
                const SizedBox(height: 16),
              ],
              Align(
                alignment: Alignment.centerRight,
                child: SyncBadge(lastSyncedAt: last),
              ),
              const SizedBox(height: 8),
              TenglishText(
                parentName != null && parentName.isNotEmpty
                    ? 'Namaskaram, $parentName!'
                    : 'Namaskaram!',
                style: AppTheme.teluguStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 4),
              Text(
                student != null
                    ? '${student.name} yokka dashboard'
                    : 'Mee pillala dashboard — preview',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppTheme.textSecondary,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                _teluguDateLine(),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppTheme.textSecondary,
                    ),
              ),
              const SizedBox(height: AppTheme.sectionGap),
              _StreakCard(storage: storage, studentId: sid, dash: dash),
              const SizedBox(height: AppTheme.sectionGap),
              _CollegeLogTodayCard(studentId: sid),
              const SizedBox(height: AppTheme.sectionGap),
              _StatsRow(storage: storage, studentId: sid, dash: dash),
              const SizedBox(height: AppTheme.sectionGap),
              SomiCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SomiHeader(
                      title: 'Ee week scores',
                      titleTelugu: true,
                    ),
                    _WeeklyScoresChart(
                      storage: storage,
                      studentId: sid,
                      remoteWeekly: dash?.weeklyPctByDay,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppTheme.sectionGap),
              SomiCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SomiHeader(
                      title: "Today's activity",
                      titleTelugu: false,
                    ),
                    _ActivityTimeline(
                      storage: storage,
                      studentId: sid,
                      remote: remoteAsync?.valueOrNull,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppTheme.sectionGap),
              SomiCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SomiHeader(
                      title: 'Recent quizzes',
                      actionLabel: 'See all →',
                      onAction: sid == null
                          ? null
                          : () => _showAllQuizzesSheet(context, storage, sid, dash),
                    ),
                    _RecentScores(
                      storage: storage,
                      studentId: sid,
                      dash: dash,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String _teluguDateLine() {
    try {
      return DateFormat.yMMMMEEEEd('te').format(DateTime.now());
    } catch (_) {
      return DateFormat.yMMMMEEEEd().format(DateTime.now());
    }
  }
}

void _showQuizDetail(BuildContext context, RecentQuizRow row) {
  showDialog<void>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(row.chapterTitle, style: GoogleFonts.poppins(fontWeight: FontWeight.w700)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${row.pct.round()}%',
            style: GoogleFonts.poppins(fontSize: 36, fontWeight: FontWeight.w800, color: AppTheme.navy),
          ),
          if (row.score != null && row.total != null)
            Text('Score: ${row.score} / ${row.total}'),
          if (row.createdAt != null)
            Text(
              DateFormat.yMMMd().add_jm().format(row.createdAt!),
              style: TextStyle(color: AppTheme.textSecondary, fontSize: 14),
            ),
        ],
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Close')),
      ],
    ),
  );
}

void _showAllQuizzesSheet(
  BuildContext context,
  StorageInterface storage,
  String studentId,
  TodayDashboardFields? dash,
) {
  final fromApi = dash?.recentQuizzes;
  final List<RecentQuizRow> rows;
  if (fromApi != null && fromApi.isNotEmpty) {
    rows = fromApi;
  } else {
    rows = _quizRowsFromStorage(storage, studentId);
  }

  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (ctx) => DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.55,
      maxChildSize: 0.92,
      minChildSize: 0.35,
      builder: (context, scrollController) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'All quizzes',
              style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(
            child: rows.isEmpty
                ? Center(
                    child: TenglishText(
                      'Inkaa quizzes teesukoledu',
                      style: AppTheme.teluguStyle(color: AppTheme.textSecondary),
                    ),
                  )
                : ListView.builder(
                    controller: scrollController,
                    itemCount: rows.length,
                    itemBuilder: (_, i) {
                      final r = rows[i];
                      return ListTile(
                        title: Text(r.chapterTitle),
                        trailing: Text(
                          '${r.pct.round()}%',
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w700),
                        ),
                        onTap: () {
                          Navigator.pop(ctx);
                          _showQuizDetail(context, r);
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    ),
  );
}

List<double> _localWeeklyScores(StorageInterface storage, String? studentId) {
  final now = DateTime.now();
  final days = List.generate(7, (i) {
    final d = DateTime(now.year, now.month, now.day).subtract(Duration(days: 6 - i));
    return d;
  });

  if (studentId == null) {
    return List.filled(7, -1);
  }

  final scores = List<double>.filled(7, -1);
  final qs = storage.allQuizScoresSync().where((q) => q.studentId == studentId).toList();

  for (var i = 0; i < 7; i++) {
    final day = days[i];
    final next = day.add(const Duration(days: 1));
    final dayScores = <double>[];
    for (final q in qs) {
      final c = q.createdAt;
      if (c == null) continue;
      if (!c.isBefore(day) && c.isBefore(next)) {
        final tot = q.total ?? 1;
        if (tot > 0) dayScores.add(((q.score ?? 0) / tot) * 100);
      }
    }
    if (dayScores.isNotEmpty) {
      scores[i] = dayScores.reduce((a, b) => a + b) / dayScores.length;
    }
  }
  return scores;
}

List<double> _mergeWeekly(List<double> local, List<double>? remote) {
  if (remote == null || remote.length != 7) return local;
  final out = List<double>.filled(7, -1);
  for (var i = 0; i < 7; i++) {
    if (remote[i] >= 0) {
      out[i] = remote[i];
    } else if (local[i] >= 0) {
      out[i] = local[i];
    } else {
      out[i] = -1;
    }
  }
  return out;
}

double? _weeklyAverage(List<double> scores) {
  final vals = scores.where((s) => s >= 0).toList();
  if (vals.isEmpty) return null;
  return vals.reduce((a, b) => a + b) / vals.length;
}

Color _scoreBarColor(double pct) {
  if (pct >= 70) return AppTheme.success;
  if (pct >= 40) return AppTheme.orange;
  return AppTheme.danger;
}

List<RecentQuizRow> _quizRowsFromStorage(StorageInterface storage, String studentId) {
  final all = storage
      .allQuizScoresSync()
      .where((q) => q.studentId == studentId)
      .toList()
    ..sort((a, b) => (b.createdAt ?? DateTime(1970)).compareTo(a.createdAt ?? DateTime(1970)));
  return all
      .map((q) {
        final tot = q.total ?? 1;
        final pct = tot > 0 ? ((q.score ?? 0) / tot) * 100 : 0.0;
        return RecentQuizRow(
          chapterTitle: q.chapter ?? 'Quiz',
          pct: pct,
          score: q.score,
          total: q.total,
          createdAt: q.createdAt,
        );
      })
      .toList();
}

List<ActivityTimelineItem> _localActivityTimeline(StorageInterface storage, String studentId) {
  final today = DateTime.now();
  final start = DateTime(today.year, today.month, today.day);
  final acts = storage
      .allStudyActivitiesSync()
      .where((a) => a.studentId == studentId && !a.activityDate.isBefore(start))
      .toList()
    ..sort((a, b) => a.activityDate.compareTo(b.activityDate));

  return acts.map((a) {
    final type = a.activityType.toLowerCase();
    ActivityVisualKind kind;
    if (type.contains('quiz')) {
      kind = ActivityVisualKind.quiz;
    } else if (type.contains('doubt')) {
      kind = ActivityVisualKind.doubt;
    } else {
      kind = ActivityVisualKind.lesson;
    }
    final clock = ActivityTimelineItem.formatClock(a.activityDate);
    final mins = a.durationMinutes ?? 0;
    final refName = a.chapterId ?? a.conceptId ?? a.activityType;
    final String line;
    switch (kind) {
      case ActivityVisualKind.quiz:
        line = '$clock — Quiz attempt';
        break;
      case ActivityVisualKind.doubt:
        line = '$clock — Doubt: $refName';
        break;
      default:
        line = '$clock — $refName lesson chadivaru ($mins min)';
        break;
    }
    return ActivityTimelineItem(at: a.activityDate, line: line, kind: kind);
  }).toList();
}

List<ActivityTimelineItem> _mergedActivities(
  TodayRemoteBundle? remote,
  StorageInterface storage,
  String? studentId,
) {
  if (studentId == null) return [];
  final remoteItems = ActivityTimelineItem.fromRemote(remote?.activity ?? const []);
  if (remoteItems.isNotEmpty) return remoteItems;
  return _localActivityTimeline(storage, studentId);
}

IconData _iconForActivity(ActivityVisualKind k) {
  switch (k) {
    case ActivityVisualKind.quiz:
      return Icons.quiz_outlined;
    case ActivityVisualKind.doubt:
      return Icons.help_outline;
    case ActivityVisualKind.lesson:
      return Icons.menu_book_outlined;
    case ActivityVisualKind.other:
      return Icons.circle_outlined;
  }
}

class _CollegeLogTodayCard extends ConsumerWidget {
  const _CollegeLogTodayCard({required this.studentId});

  final String? studentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (studentId == null) {
      return SomiCard(
        leftBorderColor: AppTheme.collegePurple,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SomiHeader(
              title: 'Iroju college lo 🏫',
              titleTelugu: true,
            ),
            TenglishText(
              'College log student link ayyaka kanipistundi',
              style: AppTheme.teluguStyle(fontSize: 15, color: AppTheme.textSecondary),
            ),
          ],
        ),
      );
    }

    final async = ref.watch(collegeLogTodayProvider(studentId!));
    return SomiCard(
      leftBorderColor: AppTheme.collegePurple,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SomiHeader(
            title: 'Iroju college lo 🏫',
            titleTelugu: true,
          ),
          async.when(
            loading: () => const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Center(child: CircularProgressIndicator()),
            ),
            error: (err, _) => TenglishText(
              'College log ippudu load avvale. Refresh try cheyandi.',
              style: AppTheme.teluguStyle(
                fontSize: 15,
                color: AppTheme.textSecondary,
                fontWeight: FontWeight.w500,
              ),
            ),
            data: (data) {
              if (data.subjects.isEmpty) {
                return TenglishText(
                  'Student inkaa update cheyyaledu',
                  style: AppTheme.teluguStyle(
                    fontSize: 15,
                    color: AppTheme.textSecondary.withValues(alpha: 0.88),
                    fontWeight: FontWeight.w500,
                  ),
                );
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ...data.subjects.map((s) => _CollegeLogSubjectBlock(subject: s)),
                  if (data.updatedAt != null) ...[
                    const SizedBox(height: 12),
                    Text(
                      'Updated at ${DateFormat.jm().format(data.updatedAt!.toLocal())}',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppTheme.textSecondary,
                          ),
                    ),
                  ],
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _CollegeLogSubjectBlock extends StatelessWidget {
  const _CollegeLogSubjectBlock({required this.subject});

  final CollegeLogSubject subject;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subject.subjectName,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
          ),
          if (subject.topics.isNotEmpty) ...[
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: subject.topics.map((t) {
                return Chip(
                  label: Text(t),
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                );
              }).toList(),
            ),
          ],
          if (subject.homework != null && subject.homework!.trim().isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              '📝 HW: ${subject.homework}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
          if (subject.teacherName != null && subject.teacherName!.trim().isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              subject.teacherName!,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
            ),
          ],
        ],
      ),
    );
  }
}

class _StreakCard extends StatelessWidget {
  const _StreakCard({
    required this.storage,
    required this.studentId,
    this.dash,
  });

  final StorageInterface storage;
  final String? studentId;
  final TodayDashboardFields? dash;

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

    var cur = dash?.currentStreak ?? streak?.currentStreak ?? 0;
    var max = dash?.maxStreak ?? streak?.maxStreak ?? 0;

    late final Widget mainLine;
    late final Widget trailing;
    late final String emoji;
    late final Color borderColor;

    if (studentId == null || (cur == 0 && max == 0)) {
      emoji = '🔥';
      borderColor = AppTheme.orange;
      mainLine = TenglishText(
        '0 rojulu — start cheddaam!',
        style: AppTheme.teluguStyle(fontSize: 18, fontWeight: FontWeight.w700),
      );
      trailing = Text(
        studentId == null ? 'Best: —' : 'Best: $max',
        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
      );
    } else if (cur == 0) {
      emoji = '💔';
      borderColor = AppTheme.textSecondary;
      mainLine = TenglishText(
        'Streak break ayyindi — gentle ga remind cheyandi',
        style: AppTheme.teluguStyle(fontSize: 16, fontWeight: FontWeight.w600),
      );
      trailing = Text(
        'Best: $max',
        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
      );
    } else if (cur > 7) {
      emoji = '⭐';
      borderColor = AppTheme.success;
      mainLine = TenglishText(
        '$cur rojulu streak — chala bagundi!',
        style: AppTheme.teluguStyle(fontSize: 18, fontWeight: FontWeight.w700),
      );
      trailing = Text(
        'Best: $max',
        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
      );
    } else {
      emoji = '🔥';
      borderColor = AppTheme.orange;
      mainLine = TenglishText(
        '$cur rojulu streak!',
        style: AppTheme.teluguStyle(fontSize: 18, fontWeight: FontWeight.w700),
      );
      trailing = Text(
        'Best: $max',
        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
      );
    }

    return SomiCard(
      leftBorderColor: borderColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 48)),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mainLine,
                const SizedBox(height: 8),
                trailing,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StatsRow extends StatelessWidget {
  const _StatsRow({
    required this.storage,
    required this.studentId,
    this.dash,
  });

  final StorageInterface storage;
  final String? studentId;
  final TodayDashboardFields? dash;

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final start = DateTime(today.year, today.month, today.day);
    var minutes = 0;
    var quizCount = 0;
    var doubtCount = 0;

    if (studentId != null) {
      final acts = storage.allStudyActivitiesSync();
      for (final a in acts) {
        if (a.studentId != studentId) continue;
        if (a.activityDate.isBefore(start)) continue;
        minutes += a.durationMinutes ?? 0;
        if (a.activityType.toLowerCase().contains('doubt')) doubtCount++;
      }
      final qs = storage.allQuizScoresSync();
      for (final q in qs) {
        if (q.studentId != studentId) continue;
        final c = q.createdAt;
        if (c == null || c.isBefore(start)) continue;
        quizCount++;
      }
    }

    if (dash?.studyMinutesToday != null) minutes = dash!.studyMinutesToday!;
    if (dash?.quizCountToday != null) quizCount = dash!.quizCountToday!;
    if (dash?.doubtCountToday != null) doubtCount = dash!.doubtCountToday!;

    final h = minutes ~/ 60;
    final m = minutes % 60;
    final hasData = minutes > 0 || quizCount > 0 || doubtCount > 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SomiHeader(title: "Today's summary"),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: StatCard(
                value: hasData ? '${h}h ${m}m' : '—',
                label: 'Study time',
                valueColor: hasData ? AppTheme.navy : AppTheme.textSecondary,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: StatCard(
                value: hasData ? '$quizCount' : '—',
                label: 'Quizzes',
                valueColor: hasData ? AppTheme.orange : AppTheme.textSecondary,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: StatCard(
                value: hasData ? '$doubtCount' : '—',
                label: 'Doubts',
                valueColor: hasData ? AppTheme.success : AppTheme.textSecondary,
              ),
            ),
          ],
        ),
        if (studentId == null)
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Center(
              child: TenglishText(
                'Data link tarvata vasthundi',
                style: AppTheme.teluguStyle(
                  fontSize: 15,
                  color: AppTheme.textSecondary,
                ),
              ),
            ),
          )
        else if (!hasData)
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Center(
              child: TenglishText(
                'Inkaa start cheyyaledu',
                style: AppTheme.teluguStyle(
                  fontSize: 15,
                  color: AppTheme.textSecondary,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _WeeklyScoresChart extends StatelessWidget {
  const _WeeklyScoresChart({
    required this.storage,
    required this.studentId,
    this.remoteWeekly,
  });

  final StorageInterface storage;
  final String? studentId;
  final List<double>? remoteWeekly;

  String _labelForIndex(int chartIndex) {
    final now = DateTime.now();
    final day = DateTime(now.year, now.month, now.day).subtract(Duration(days: 6 - chartIndex));
    final wd = day.weekday;
    return _weekdayTe[(wd - 1) % 7];
  }

  @override
  Widget build(BuildContext context) {
    final local = _localWeeklyScores(storage, studentId);
    final scores = _mergeWeekly(local, remoteWeekly);
    const maxY = 100.0;
    final avg = _weeklyAverage(scores);
    final hasAny = scores.any((s) => s >= 0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 200,
          child: BarChart(
            BarChartData(
              alignment: BarChartAlignment.spaceAround,
              maxY: maxY,
              barGroups: [
                for (var i = 0; i < 7; i++)
                  BarChartGroupData(
                    x: i,
                    barRods: [
                      () {
                        final empty = scores[i] < 0;
                        final borderGrey = AppTheme.textSecondary.withValues(alpha: 0.45);
                        if (empty) {
                          return BarChartRodData(
                            toY: 28,
                            color: Colors.transparent,
                            width: 16,
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(6)),
                            borderSide: BorderSide(color: borderGrey, width: 2),
                            backDrawRodData: BackgroundBarChartRodData(
                              show: true,
                              toY: maxY,
                              color: AppTheme.textSecondary.withValues(alpha: 0.06),
                            ),
                          );
                        }
                        return BarChartRodData(
                          toY: scores[i].clamp(0, 100),
                          color: scores[i] >= 70
                              ? AppTheme.success
                              : scores[i] >= 40
                                  ? AppTheme.orange
                                  : AppTheme.danger,
                          width: 16,
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(6)),
                          backDrawRodData: BackgroundBarChartRodData(show: false),
                        );
                      }(),
                    ],
                  ),
              ],
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (v, _) => Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        _labelForIndex(v.toInt()),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 32,
                    interval: 25,
                    getTitlesWidget: (v, _) => Text(
                      '${v.toInt()}%',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              ),
              gridData: FlGridData(
                show: true,
                drawVerticalLine: false,
                horizontalInterval: 25,
                getDrawingHorizontalLine: (v) => FlLine(
                  color: AppTheme.textSecondary.withValues(alpha: 0.12),
                  strokeWidth: 1,
                ),
              ),
              borderData: FlBorderData(show: false),
            ),
          ),
        ),
        const SizedBox(height: 12),
        if (avg != null)
          Text(
            'Average: ${avg.round()}%',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppTheme.navy,
            ),
            textAlign: TextAlign.center,
          )
        else if (!hasAny)
          Text(
            'Inkaa scores levu',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
            textAlign: TextAlign.center,
          ),
      ],
    );
  }
}

class _ActivityTimeline extends StatelessWidget {
  const _ActivityTimeline({
    required this.storage,
    required this.studentId,
    this.remote,
  });

  final StorageInterface storage;
  final String? studentId;
  final TodayRemoteBundle? remote;

  @override
  Widget build(BuildContext context) {
    if (studentId == null) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: TenglishText(
          'Activity inkaa ledu',
          style: AppTheme.teluguStyle(
            fontSize: 16,
            color: AppTheme.textSecondary,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }

    final items = _mergedActivities(remote, storage, studentId);
    if (items.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: TenglishText(
          'Today inkaa activity ledu',
          style: AppTheme.teluguStyle(
            fontSize: 16,
            color: AppTheme.textSecondary,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: List.generate(items.length, (i) {
          final it = items[i];
          final last = i == items.length - 1;
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Icon(_iconForActivity(it.kind), size: 22, color: AppTheme.navy),
                  if (!last)
                    Container(
                      width: 2,
                      height: 36,
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      color: AppTheme.textSecondary.withValues(alpha: 0.2),
                    ),
                ],
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    it.line,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.35),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class _RecentScores extends StatelessWidget {
  const _RecentScores({
    required this.storage,
    required this.studentId,
    this.dash,
  });

  final StorageInterface storage;
  final String? studentId;
  final TodayDashboardFields? dash;

  @override
  Widget build(BuildContext context) {
    if (studentId == null) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Center(
          child: TenglishText(
            'Quizzes link ayyaka ikkada kanipistayi',
            style: AppTheme.teluguStyle(fontSize: 15, color: AppTheme.textSecondary),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    final sid = studentId!;
    final apiRows = dash?.recentQuizzes;
    final List<RecentQuizRow> last5;
    if (apiRows != null && apiRows.isNotEmpty) {
      last5 = apiRows.take(5).toList();
    } else {
      last5 = _quizRowsFromStorage(storage, sid).take(5).toList();
    }

    if (last5.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: EmptyState(
          icon: Icons.menu_book_outlined,
          message: 'Inkaa quizzes teesukoledu',
        ),
      );
    }

    return Column(
      children: last5.map((row) {
        return InkWell(
          onTap: () => _showQuizDetail(context, row),
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    row.chapterTitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  flex: 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: LinearProgressIndicator(
                      value: row.pct / 100,
                      minHeight: 10,
                      backgroundColor: AppTheme.textSecondary.withValues(alpha: 0.12),
                      valueColor: AlwaysStoppedAnimation<Color>(_scoreBarColor(row.pct)),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  '${row.pct.round()}%',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: AppTheme.navy,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
