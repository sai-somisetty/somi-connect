// lib/screens/dashboard/tabs/today_tab.dart
//
// SOMI Connect — Parent Home Screen (EXAM-FIRST)
// Hero = highest-priority daily insight from Supabase.
// Subject tiles demote to supporting evidence below.
//
// Spec: every font-size, letter-spacing, opacity, padding is intentional.

import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/theme.dart';
import '../../../models/daily_insight.dart';
import '../../../models/isar/isar_collections.dart';
import '../../../models/upcoming_exam.dart';
import '../../../providers/insights_provider.dart';
import '../../../providers/storage_provider.dart';
import '../../../providers/today_remote_provider.dart';
import '../../../providers/selected_student_provider.dart';
import '../../../providers/ui_tick_provider.dart';
import '../../../services/sync_service.dart';
import '../../../widgets/widgets.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Reference-spec palette  (rgba → ARGB hex; opacity × 255, rounded)
// ─────────────────────────────────────────────────────────────────────────────

// Silver 15 %  rgba(164,181,196,0.15)
const Color _kSilverDiv15   = Color(0x26A4B5C4);
// Silver 20 %  rgba(164,181,196,0.20)
const Color _kSilverDiv20   = Color(0x33A4B5C4);
// Silver-gray 60 % — featured bar track
const Color _kFeatTrack     = Color(0x99CDD5DB);
// Compact tile border  #CDD5DB
const Color _kTileBorder    = Color(0xFFCDD5DB);
// Compact bar track  #F0E9D9
const Color _kCompactTrack  = Color(0xFFF0E9D9);
// Classroom status text  #7C2D12
const Color _kClassroomTxt  = Color(0xFF7C2D12);
// Amber 6 %   rgba(217,119,6,0.06)
const Color _kAmberBg6      = Color(0x0FD97706);
// Amber 30 %  rgba(217,119,6,0.30)
const Color _kAmberBorder30 = Color(0x4DD97706);
// Gold 20 %  (hero card top hairline)
const Color _kGoldLine20    = Color(0x33E3C39D);
// Gold 60 %  ("YESTERDAY" label)
const Color _kGoldText60    = Color(0x99E3C39D);
// Gold 30 %  (Steady pill border)
const Color _kGoldBorder30  = Color(0x4DE3C39D);
// Alarm red 6 %  (MAMA gradient start)
const Color _kAlarmGrad6    = Color(0x0FB43A3A);
// Sand 4 %  (featured tile gradient end)
const Color _kSandGrad4     = Color(0x0AA68868);

// ─────────────────────────────────────────────────────────────────────────────
// Subject model
// ─────────────────────────────────────────────────────────────────────────────

enum SubjectState { onTrack, behind1d, behind2d, behind3d, behindRed }

class SubjectData {
  const SubjectData(
    this.name,
    this.percent,
    this.chaptersCompleted,
    this.totalChapters,
    this.classPercent,
    this.daysBehind,
  );

  final String name;
  final int percent;
  final int chaptersCompleted;
  final int totalChapters;

  /// Class-average completion — drives the gap marker on progress bars.
  final int classPercent;

  /// Days since this subject was last practised (0 = active today).
  final int daysBehind;

  SubjectState get state {
    if (daysBehind <= 0) return SubjectState.onTrack;
    if (daysBehind == 1) return SubjectState.behind1d;
    if (daysBehind == 2) return SubjectState.behind2d;
    if (daysBehind == 3) return SubjectState.behind3d;
    return SubjectState.behindRed;
  }

  /// Subjects 3+ days behind surface in the Problem Subject tile.
  bool get isFeatured => daysBehind >= 3;

  int get gapVsClass => percent - classPercent;
}

// TODO: replace with real subject progress queries from Supabase
const _demoSubjects = <SubjectData>[
  SubjectData('Physics',   73, 16, 22, 72, 0),
  SubjectData('Chemistry', 54, 14, 26, 68, 3),
  SubjectData('Botany',    88, 22, 25, 85, 0),
  SubjectData('Zoology',   62, 14, 22, 65, 1),
];

// ─────────────────────────────────────────────────────────────────────────────
// Helpers
// ─────────────────────────────────────────────────────────────────────────────

String _dateLabel(DateTime dt) {
  const days   = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                  'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
  final h      = dt.hour == 0 ? 12 : (dt.hour > 12 ? dt.hour - 12 : dt.hour);
  final m      = dt.minute.toString().padLeft(2, '0');
  final period = dt.hour < 12 ? 'am' : 'pm';
  return '${days[dt.weekday - 1]} · ${dt.day} ${months[dt.month - 1]} · $h:$m $period';
}

/// Fill colour for compact subject progress bars.
Color _compactFillColor(SubjectData s) {
  if (s.daysBehind == 0) return AppTheme.sand;
  if (s.daysBehind <= 2) return AppTheme.warnAmberDot;
  return AppTheme.alarmRed;
}

/// First line of body text, capped at 90 chars.
String _firstLine(String? text) {
  if (text == null || text.isEmpty) return '';
  final nl = text.indexOf('\n');
  final s  = nl >= 0 ? text.substring(0, nl) : text;
  return s.length > 90 ? '${s.substring(0, 90)}…' : s;
}

// ─────────────────────────────────────────────────────────────────────────────
// Alarm stripe painter
// Matches CSS: repeating-linear-gradient(45deg, #B43A3A 0 6px, transparent 6px 12px)
// ─────────────────────────────────────────────────────────────────────────────

class _AlarmStripePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = AppTheme.alarmRed;
    const stripe = 6.0;
    const period = 12.0;
    for (double x = -size.height; x < size.width + size.height; x += period) {
      final path = Path()
        ..moveTo(x,                       size.height)
        ..lineTo(x + size.height,         0)
        ..lineTo(x + size.height + stripe, 0)
        ..lineTo(x + stripe,              size.height)
        ..close();
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter _) => false;
}

// ─────────────────────────────────────────────────────────────────────────────
// Root widget
// ─────────────────────────────────────────────────────────────────────────────

class TodayTab extends ConsumerStatefulWidget {
  const TodayTab({super.key});

  @override
  ConsumerState<TodayTab> createState() => _TodayTabState();
}

class _TodayTabState extends ConsumerState<TodayTab> {
  bool _linkBannerDismissed = false;

  Future<void> _doRefresh() async {
    final sid = ref.read(selectedStudentIdProvider);
    ref.invalidate(parentDisplayNameProvider);
    ref.invalidate(dailyInsightsProvider(kDevParentId));
    ref.invalidate(recentExamsProvider(kDevStudentId));
    if (sid != null) {
      ref.invalidate(todayRemoteProvider(sid));
      await ref.read(syncServiceProvider).pullFromServer(sid);
    }
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Synced!'), duration: Duration(seconds: 1)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final now   = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);

    final storage         = ref.watch(storageProvider);
    final sid             = ref.watch(selectedStudentIdProvider);
    ref.watch(realtimeTickProvider);

    // ── New: Supabase insights + recent exams ─────────────────────────────
    final insightsAsync = ref.watch(dailyInsightsProvider(kDevParentId));
    final examsAsync    = ref.watch(recentExamsProvider(kDevStudentId));

    final insights    = insightsAsync.valueOrNull ?? <DailyInsight>[];
    final recentExams = examsAsync.valueOrNull ?? <UpcomingExam>[];

    // Top insight drives the greeting + hero card
    final topInsight = insights.isNotEmpty ? insights.first : null;

    // Alert count = red/amber insights + unread nudges
    final insightAlerts = insights
        .where((i) => i.severity == 'red' || i.severity == 'amber')
        .length;

    // ── Local display name ────────────────────────────────────────────────
    final parentNameAsync = ref.watch(parentDisplayNameProvider);
    final remoteAsync     =
        sid != null ? ref.watch(todayRemoteProvider(sid)) : null;
    final dash =
        TodayDashboardFields.parse(remoteAsync?.valueOrNull?.dashboard);

    final student      = sid != null ? storage.studentByApiIdSync(sid) : null;
    final parentName   = (parentNameAsync.valueOrNull ?? '').trim();
    final parentFirst  = parentName.isNotEmpty
        ? parentName.split(' ').first
        : 'Srinivas';
    final studentFirst = student?.name.split(' ').first ?? 'Ravi';

    // ── Study activities ──────────────────────────────────────────────────
    final allActs = sid == null
        ? <StudyActivityIsar>[]
        : (storage.allStudyActivitiesSync()
            .where((a) => a.studentId == sid)
            .toList()
          ..sort((a, b) => b.activityDate.compareTo(a.activityDate)));

    final yStart           = today.subtract(const Duration(days: 1));
    final yesterdayMinutes = allActs
        .where((a) =>
            !a.activityDate.isBefore(yStart) && a.activityDate.isBefore(today))
        .fold<int>(0, (s, a) => s + (a.durationMinutes ?? 0));

    // ── Streak ────────────────────────────────────────────────────────────
    int streak = 18;
    if (sid != null) {
      for (final s in storage.allStreaksSync()) {
        if (s.studentId == sid) { streak = s.currentStreak; break; }
      }
    }
    if (dash?.currentStreak != null) streak = dash!.currentStreak!;

    // ── Accuracy (last 10 quizzes) ─────────────────────────────────────────
    int accuracyPct = 81;
    if (sid != null) {
      final scores = storage
          .allQuizScoresSync()
          .where((q) => q.studentId == sid)
          .toList()
        ..sort((a, b) => (b.createdAt ?? DateTime(1970))
            .compareTo(a.createdAt ?? DateTime(1970)));
      final last10 = scores.take(10).toList();
      if (last10.isNotEmpty) {
        final totalScore = last10.fold<int>(0, (s, q) => s + (q.score ?? 0));
        final totalMax   = last10.fold<int>(0, (s, q) => s + (q.total ?? 1).clamp(1, 9999));
        if (totalMax > 0) accuracyPct = ((totalScore / totalMax) * 100).round();
      }
    }

    // ── Mastered concepts ─────────────────────────────────────────────────
    int masteredCount = 6;
    if (sid != null) {
      masteredCount = storage
          .allConceptProgressSync()
          .where((c) => c.studentId == sid && c.progressPercent >= 80)
          .length;
    }

    // ── Unread nudges ──────────────────────────────────────────────────────
    int unreadCount = 0;
    if (sid != null) {
      unreadCount = storage
          .allNudgesSync()
          .where((n) => n.studentId == sid && !n.isRead)
          .length;
    }

    final alertCount = insightAlerts + unreadCount;

    // ── Related exam for hero card stats ──────────────────────────────────
    UpcomingExam? relatedExam;
    if (topInsight?.relatedExamId != null) {
      for (final e in recentExams) {
        if (e.id == topInsight!.relatedExamId) { relatedExam = e; break; }
      }
    }
    relatedExam ??= recentExams.isNotEmpty ? recentExams.first : null;

    // ── Problem subject (first featured, or first with matching insight) ──
    SubjectData? problemSubjectData;
    if (topInsight?.relatedSubject != null) {
      final name = topInsight!.relatedSubject!.toLowerCase();
      for (final s in _demoSubjects) {
        if (s.name.toLowerCase() == name) { problemSubjectData = s; break; }
      }
    }
    // Fallback: first featured demo subject (Chemistry, 3d behind)
    if (problemSubjectData == null) {
      for (final s in _demoSubjects) {
        if (s.isFeatured) { problemSubjectData = s; break; }
      }
    }

    // Index used for the ghost number on the featured tile
    final problemIdx = problemSubjectData == null
        ? 1
        : _demoSubjects.indexOf(problemSubjectData) + 1;

    // ── Compact subjects (non-featured) ───────────────────────────────────
    final compactWithIdx = <(SubjectData, int)>[];
    for (int i = 0; i < _demoSubjects.length; i++) {
      if (!_demoSubjects[i].isFeatured) {
        compactWithIdx.add((_demoSubjects[i], i + 1));
      }
    }

    // ── Last 4 exams oldest→newest for the mini chart ─────────────────────
    // Provider returns newest-first; take 4 and reverse for L-to-R reading
    final last4Exams = recentExams.take(4).toList().reversed.toList();

    // ─────────────────────────────────────────────────────────────────────
    return RefreshIndicator(
      color: AppTheme.gold,
      backgroundColor: AppTheme.navy,
      onRefresh: _doRefresh,
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SafeArea(
              bottom: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Link-student banner
                  if (sid == null && !_linkBannerDismissed)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(22, 12, 22, 0),
                      child: LinkStudentBanner(
                        onDismiss: () =>
                            setState(() => _linkBannerDismissed = true),
                      ),
                    ),

                  // ── 1. TOP BAR ──────────────────────────────────────────
                  _TopBar(parentFirst: parentFirst, notifCount: unreadCount),

                  // ── 2. DATE LINE + ALERTS PILL ──────────────────────────
                  _DateLine(now: now, alertCount: alertCount),

                  // ── 3. DIAGNOSTIC GREETING (driven by top insight) ──────
                  _DiagnosticGreeting(
                    topInsight: topInsight,
                    studentFirst: studentFirst,
                  ),

                  // ── 4. HERO INSIGHT CARD ────────────────────────────────
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22, 0, 22, 14),
                    child: insightsAsync.when(
                      loading: () => const _SkeletonHeroCard(),
                      error: (e, st) => _ErrorRetry(
                        onRetry: () =>
                            ref.invalidate(dailyInsightsProvider(kDevParentId)),
                      ),
                      data: (list) => list.isEmpty
                          ? _CelebrationHero(
                              studentFirst: studentFirst,
                              streak: streak,
                              accuracyPct: accuracyPct,
                              masteredCount: masteredCount,
                              yesterdayMinutes: yesterdayMinutes,
                            )
                          : _HeroInsightCard(
                              insight: list.first,
                              relatedExam: relatedExam,
                              recentExams: recentExams,
                              streak: streak,
                              accuracyPct: accuracyPct,
                              masteredCount: masteredCount,
                              yesterdayMinutes: yesterdayMinutes,
                            ),
                    ),
                  ),

                  // ── 5. ACTION CTA ───────────────────────────────────────
                  if (topInsight?.actionCta != null && insights.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(22, 0, 22, 14),
                      child: _ActionCta(insight: insights.first),
                    ),

                  // ── 6. PROBLEM SUBJECT TILE ─────────────────────────────
                  if (problemSubjectData != null)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(22, 0, 22, 8),
                      child: _FeaturedSubjectTile(
                        data: problemSubjectData,
                        ghostNum: problemIdx.toString().padLeft(2, '0'),
                      ),
                    ),

                  // ── 7. § SUBJECTS SECTION HEADER ────────────────────────
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22, 4, 22, 10),
                    child: _SubjectSectionHeader(
                        examTrack: 'NEET', count: _demoSubjects.length),
                  ),

                  // ── 8. COMPACT 3-COLUMN GRID ────────────────────────────
                  if (compactWithIdx.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: _CompactSubjectRow(items: compactWithIdx),
                    ),

                  // ── 9. YESTERDAY STRIP ──────────────────────────────────
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22, 14, 22, 14),
                    child: _YesterdayStrip(
                      streak: streak,
                      yesterdayMinutes: yesterdayMinutes,
                      accuracyPct: accuracyPct,
                    ),
                  ),

                  // ── 10. LAST 4 EXAMS MINI CHART ─────────────────────────
                  if (last4Exams.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(22, 0, 22, 18),
                      child: _ExamMiniChartSection(exams: last4Exams),
                    ),

                  // ── 11. MAMA FOOTER NOTE ────────────────────────────────
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22, 0, 22, 18),
                    child: _MamaFooterNote(
                      insight: topInsight,
                      fallbackSubject: problemSubjectData,
                    ),
                  ),

                  // ── 12. CLASSROOM MICRO-STATUS ──────────────────────────
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22, 0, 22, 12),
                    child: _ClassroomStatusRow(parentFirst: parentFirst),
                  ),

                  // Spacer for bottom nav
                  const SizedBox(height: 70),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 1. TOP BAR
// ─────────────────────────────────────────────────────────────────────────────

class _TopBar extends StatelessWidget {
  const _TopBar({required this.parentFirst, required this.notifCount});

  final String parentFirst;
  final int    notifCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 16, 22, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left: SOMi badge + Connect / № 047
          Row(
            children: [
              Transform.rotate(
                angle: -2.5 * math.pi / 180,
                child: Container(
                  width: 28, height: 28,
                  decoration: BoxDecoration(
                    color: AppTheme.navy,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'SOMi',
                    style: GoogleFonts.dmSans(
                      fontSize: 6.5, fontWeight: FontWeight.w900,
                      color: AppTheme.gold, letterSpacing: 0.65,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Connect',
                    style: GoogleFonts.dmSans(
                      fontSize: 9, fontWeight: FontWeight.w700,
                      color: AppTheme.navy, letterSpacing: 1.98, height: 1.0,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '№ 047',
                    style: GoogleFonts.dmSans(
                      fontSize: 8, color: AppTheme.silver,
                      letterSpacing: 0.80, height: 1.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Right: bell + avatar
          Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Icon(Icons.notifications_outlined,
                        size: 18, color: AppTheme.navy),
                  ),
                  if (notifCount > 0)
                    Positioned(
                      top: 3, right: 3,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 1),
                        decoration: BoxDecoration(
                          color: AppTheme.alarmRed,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          '$notifCount',
                          style: GoogleFonts.dmSans(
                            fontSize: 7, fontWeight: FontWeight.w900,
                            color: Colors.white, height: 1.0,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(width: 12),
              Container(
                width: 32, height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: _kTileBorder, width: 1.5),
                ),
                alignment: Alignment.center,
                child: Text(
                  parentFirst.isNotEmpty ? parentFirst[0].toUpperCase() : 'S',
                  style: GoogleFonts.dmSans(
                    fontSize: 12, fontWeight: FontWeight.w700,
                    color: AppTheme.navy,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 2. DATE LINE + ALERTS PILL
// ─────────────────────────────────────────────────────────────────────────────

class _DateLine extends StatelessWidget {
  const _DateLine({required this.now, required this.alertCount});

  final DateTime now;
  final int      alertCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 22, 22, 8),
      child: Row(
        children: [
          Container(width: 16, height: 1, color: AppTheme.navy),
          const SizedBox(width: 6),
          Text(
            _dateLabel(now).toUpperCase(),
            style: GoogleFonts.dmSans(
              fontSize: 9, fontWeight: FontWeight.w700,
              color: AppTheme.navy, letterSpacing: 2.52,
            ),
          ),
          if (alertCount > 0) ...[
            const SizedBox(width: 6),
            const Spacer(),
            _AlertsPill(count: alertCount),
          ],
        ],
      ),
    );
  }
}

// Alerts pill: alarmRed 8% bg, 0.5px red border, red dot + "N ALERTS"
class _AlertsPill extends StatelessWidget {
  const _AlertsPill({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
      decoration: BoxDecoration(
        color: AppTheme.alarmRedBg,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
            color: AppTheme.alarmRed.withValues(alpha: 0.3), width: 0.5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 5, height: 5,
            decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppTheme.alarmRed,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            '$count alerts'.toUpperCase(),
            style: GoogleFonts.dmSans(
              fontSize: 8, fontWeight: FontWeight.w700,
              color: AppTheme.alarmRed, letterSpacing: 0.64,
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 3. DIAGNOSTIC GREETING  (driven by topInsight.severity)
// ─────────────────────────────────────────────────────────────────────────────

class _DiagnosticGreeting extends StatelessWidget {
  const _DiagnosticGreeting({
    required this.topInsight,
    required this.studentFirst,
  });

  final DailyInsight? topInsight;
  final String        studentFirst;

  ({String before, String italic, Color italicColor}) _parts() {
    final t = topInsight;
    if (t == null) {
      return (
        before: 'How is $studentFirst\n',
        italic: 'doing?',
        italicColor: AppTheme.steel,
      );
    }
    switch (t.severity) {
      case 'red':
        if (t.insightType.contains('missed')) {
          return (
            before: '$studentFirst missed\n',
            italic: 'the exam.',
            italicColor: AppTheme.alarmRed,
          );
        }
        return (
          before: '$studentFirst needs\n',
          italic: 'attention.',
          italicColor: AppTheme.alarmRed,
        );
      case 'amber':
        return (
          before: '$studentFirst needs\n',
          italic: 'focus.',
          italicColor: AppTheme.warnAmberDot,
        );
      case 'gold':
        final days = t.daysSinceEvent?.abs() ?? 0;
        return (
          before: 'Exam in $days\n',
          italic: 'days.',
          italicColor: AppTheme.gold,
        );
      case 'green':
        return (
          before: '$studentFirst is\n',
          italic: 'on track.',
          italicColor: AppTheme.okGreenDot,
        );
      default:
        return (
          before: 'How is $studentFirst\n',
          italic: 'doing?',
          italicColor: AppTheme.steel,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final p = _parts();
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 0, 22, 14),
      child: RichText(
        text: TextSpan(
          style: GoogleFonts.newsreader(
            fontSize: 36, fontWeight: FontWeight.w400,
            color: AppTheme.navy, letterSpacing: -1.26, height: 1.05,
          ),
          children: [
            TextSpan(text: p.before),
            TextSpan(
              text: p.italic,
              style: GoogleFonts.newsreader(
                fontSize: 36, fontWeight: FontWeight.w400,
                color: p.italicColor, fontStyle: FontStyle.italic,
                letterSpacing: -1.26, height: 1.05,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 4a. HERO INSIGHT CARD  (shows insights[0])
// Navy gradient bg, top stripe, badge pill, headline, stats row by insight type
// ─────────────────────────────────────────────────────────────────────────────

class _HeroInsightCard extends ConsumerWidget {
  const _HeroInsightCard({
    required this.insight,
    this.relatedExam,
    required this.recentExams,
    required this.streak,
    required this.accuracyPct,
    required this.masteredCount,
    required this.yesterdayMinutes,
  });

  final DailyInsight    insight;
  final UpcomingExam?   relatedExam;
  final List<UpcomingExam> recentExams;
  final int streak, accuracyPct, masteredCount, yesterdayMinutes;

  bool get _isRed    => insight.severity == 'red';
  bool get _isAmber  => insight.severity == 'amber';
  bool get _isGold   => insight.severity == 'gold';
  bool get _isGreen  => insight.severity == 'green';

  Color get _sevColor {
    if (_isRed)   return AppTheme.alarmRed;
    if (_isAmber) return AppTheme.warnAmberDot;
    if (_isGold)  return AppTheme.gold;
    if (_isGreen) return AppTheme.okGreenDot;
    return AppTheme.silver;
  }

  bool get _isMissed   => insight.insightType.contains('missed');
  bool get _isUpcoming => insight.insightType.contains('upcoming') ||
                          insight.insightType.contains('prep');
  bool get _isResult   => insight.insightType.contains('result');

  List<Widget> _statChildren(ExamStatsBundle? examStats) {
    if (_isMissed) {
      return [
        _HeroStat(
          value: examStats?.lastScore != null ? '${examStats!.lastScore}' : '—',
          suffix: examStats?.lastTotal != null ? '/${examStats!.lastTotal}' : null,
          label: 'Last Exam',
          valueColor: AppTheme.alarmRed,
        ),
        const _StatDivider(),
        _HeroStat(
          value: examStats?.avgLast4Percent != null
              ? '${examStats!.avgLast4Percent}%'
              : '—',
          label: 'Avg Last 4',
        ),
        const _StatDivider(),
        _HeroStat(
          value: examStats?.lastClassRank != null
              ? '${examStats!.lastClassRank}'
              : '—',
          suffix: examStats?.classSize != null ? '/${examStats!.classSize}' : null,
          label: 'Class Rank',
        ),
      ];
    }
    if (_isUpcoming) {
      final daysLeft  = insight.daysSinceEvent?.abs() ?? 0;
      final subjStr   = relatedExam?.subjects.take(2).join(' · ') ??
          (insight.relatedSubject ?? '—');
      return [
        _HeroStat(
          value: daysLeft > 0 ? '$daysLeft' : '—',
          label: 'Days Left',
          valueColor: AppTheme.gold,
        ),
        const _StatDivider(),
        _HeroStat(value: subjStr, label: 'Subjects'),
        if (relatedExam?.syllabusNote != null) ...[
          const _StatDivider(),
          const _HeroStat(value: '—', label: 'Prep %'),
        ],
      ];
    }
    if (_isResult) {
      final scoreStr = (relatedExam?.score != null && relatedExam?.total != null)
          ? '${relatedExam!.score}/${relatedExam!.total}'
          : '—';
      return [
        _HeroStat(value: scoreStr, label: 'Score'),
        const _StatDivider(),
        _HeroStat(
          value: relatedExam?.classRank != null ? '#${relatedExam!.classRank}' : '—',
          label: relatedExam?.classSize != null
              ? 'of ${relatedExam!.classSize}'
              : 'Class Rank',
        ),
        const _StatDivider(),
        const _HeroStat(value: '—', label: 'vs Last'),
      ];
    }
    // Default: streak / accuracy / mastered / quizzes
    return [
      _HeroStat(
        value: streak > 0 ? '$streak' : '—',
        label: 'Streak', valueColor: AppTheme.gold,
      ),
      const _StatDivider(),
      _HeroStat(
        value: accuracyPct > 0 ? '$accuracyPct' : '—',
        suffix: accuracyPct > 0 ? '%' : null,
        label: 'Accuracy',
      ),
      const _StatDivider(),
      _HeroStat(
        value: masteredCount > 0
            ? masteredCount.toString().padLeft(2, '0')
            : '—',
        label: 'Mastered',
      ),
      const _StatDivider(),
      const _HeroStat(value: '03', label: 'Quizzes'),
    ];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // For missed-exam insight types, fetch aggregated stats from attended exams.
    // While loading or on error, examStats is null → stats show "—" (safe fallback).
    ExamStatsBundle? examStats;
    if (_isMissed) {
      final statsAsync =
          ref.watch(examStatsForInsightProvider(kDevStudentId));
      examStats = statsAsync.valueOrNull;
    }

    final badgeLabel  = insight.statusLabel ??
        insight.insightType.replaceAll('_', ' ').toUpperCase();
    final bodyFirst   = _firstLine(insight.body);
    final hh          = yesterdayMinutes ~/ 60;
    final mm          = yesterdayMinutes % 60;
    final ghostText   = hh > 0
        ? '${hh}h'
        : (mm > 0 ? '${mm}m' : '1h');

    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppTheme.navy,
      ),
      child: Stack(
        children: [
          // Top stripe: diagonal alarm for red, solid tinted line otherwise
          Positioned(
            top: 0, left: 0, right: 0,
            child: _isRed
                ? SizedBox(
                    height: 3,
                    child: CustomPaint(painter: _AlarmStripePainter()),
                  )
                : Container(
                    height: 3,
                    color: _sevColor.withValues(alpha: 0.5),
                  ),
          ),
          // Gold hairline below stripe
          Positioned(
            top: 3, left: 22, right: 22,
            child: Container(height: 1, color: _kGoldLine20),
          ),
          // Ghost study-hours number (top-right, behind content)
          Positioned(
            top: 4, right: -8,
            child: Text(
              ghostText,
              style: GoogleFonts.newsreader(
                fontSize: 120, fontWeight: FontWeight.w400,
                color: AppTheme.gold.withValues(alpha: 0.04),
                height: 0.7, letterSpacing: -9.6,
              ),
            ),
          ),
          // Main content
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 22, 22, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Badge + (optional later: action icon)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: _sevColor.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                        color: _sevColor.withValues(alpha: 0.4), width: 0.5),
                  ),
                  child: Text(
                    badgeLabel,
                    style: GoogleFonts.dmSans(
                      fontSize: 8, fontWeight: FontWeight.w700,
                      color: _sevColor, letterSpacing: 0.64,
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                // Headline  24px serif white
                Text(
                  insight.headline,
                  style: GoogleFonts.newsreader(
                    fontSize: 24, fontWeight: FontWeight.w400,
                    color: Colors.white, height: 1.1, letterSpacing: -0.6,
                  ),
                ),
                // Body subtitle
                if (bodyFirst.isNotEmpty) ...[
                  const SizedBox(height: 6),
                  Text(
                    bodyFirst,
                    style: GoogleFonts.dmSans(
                      fontSize: 11, color: AppTheme.steel,
                      fontStyle: FontStyle.italic, height: 1.3,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
                const SizedBox(height: 16),
                // Stats row (type-specific)
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(color: _kSilverDiv15, width: 1)),
                  ),
                  padding: const EdgeInsets.only(top: 14),
                  child: Row(children: _statChildren(examStats)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 4b. CELEBRATION HERO  (shown when insights list is empty → all clear)
// ─────────────────────────────────────────────────────────────────────────────

class _CelebrationHero extends StatelessWidget {
  const _CelebrationHero({
    required this.studentFirst,
    required this.streak,
    required this.accuracyPct,
    required this.masteredCount,
    required this.yesterdayMinutes,
  });

  final String studentFirst;
  final int    streak, accuracyPct, masteredCount, yesterdayMinutes;

  @override
  Widget build(BuildContext context) {
    final hh      = yesterdayMinutes ~/ 60;
    final mm      = yesterdayMinutes % 60;
    final timeStr = yesterdayMinutes > 0
        ? (hh > 0 ? (mm > 0 ? '${hh}h ${mm}m' : '${hh}h') : '${mm}m')
        : '—';

    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppTheme.navy,
        border: Border.all(
            color: AppTheme.okGreenDot.withValues(alpha: 0.3), width: 1),
      ),
      child: Stack(
        children: [
          // Green top accent
          Positioned(
            top: 0, left: 0, right: 0,
            child: Container(
                height: 3,
                color: AppTheme.okGreenDot.withValues(alpha: 0.5)),
          ),
          // Gold hairline
          Positioned(
            top: 3, left: 22, right: 22,
            child: Container(height: 1, color: _kGoldLine20),
          ),
          // Ghost time
          Positioned(
            top: 4, right: -8,
            child: Text(
              timeStr,
              style: GoogleFonts.newsreader(
                fontSize: 120,
                color: AppTheme.gold.withValues(alpha: 0.04),
                height: 0.7, letterSpacing: -9.6,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 22, 22, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'All Clear',
                          style: GoogleFonts.dmSans(
                            fontSize: 9, fontWeight: FontWeight.w700,
                            color: _kGoldText60, letterSpacing: 2.25,
                            height: 1.0,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          '$studentFirst · NEET 2027',
                          style: GoogleFonts.dmSans(
                              fontSize: 11, color: AppTheme.silver),
                        ),
                      ],
                    ),
                    // Green steady pill
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2.5),
                      decoration: BoxDecoration(
                        color: AppTheme.okGreenDot.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: AppTheme.okGreenDot.withValues(alpha: 0.3),
                            width: 0.5),
                      ),
                      child: Text(
                        'STEADY',
                        style: GoogleFonts.dmSans(
                          fontSize: 8.5, fontWeight: FontWeight.w700,
                          color: AppTheme.okGreenDot, letterSpacing: 1.02,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Study time
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: timeStr,
                        style: GoogleFonts.newsreader(
                          fontSize: 60, fontWeight: FontWeight.w400,
                          color: Colors.white, height: 0.9,
                          letterSpacing: -3.0,
                        ),
                      ),
                      TextSpan(
                        text: yesterdayMinutes > 0 ? ' yesterday' : '',
                        style: GoogleFonts.dmSans(
                          fontSize: 12, color: AppTheme.steel,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'No alerts · $studentFirst is on track',
                  style: GoogleFonts.dmSans(
                    fontSize: 11, color: AppTheme.steel,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 14),
                // Stats row
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(color: _kSilverDiv15, width: 1)),
                  ),
                  padding: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      _HeroStat(
                        value: streak > 0 ? '$streak' : '—',
                        label: 'Streak', valueColor: AppTheme.gold,
                      ),
                      const _StatDivider(),
                      _HeroStat(
                        value: accuracyPct > 0 ? '$accuracyPct' : '—',
                        suffix: accuracyPct > 0 ? '%' : null,
                        label: 'Accuracy',
                      ),
                      const _StatDivider(),
                      _HeroStat(
                        value: masteredCount > 0
                            ? masteredCount.toString().padLeft(2, '0')
                            : '—',
                        label: 'Mastered',
                      ),
                      const _StatDivider(),
                      const _HeroStat(value: '03', label: 'Quizzes'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 4c. SKELETON HERO CARD  (loading state)
// ─────────────────────────────────────────────────────────────────────────────

class _SkeletonHeroCard extends StatelessWidget {
  const _SkeletonHeroCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppTheme.navy,
      ),
      padding: const EdgeInsets.fromLTRB(22, 22, 22, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _bone(130, 20),
          const SizedBox(height: 16),
          _bone(double.infinity, 28),
          const SizedBox(height: 8),
          _bone(180, 14),
          const Spacer(),
          Container(height: 1, color: Colors.white.withValues(alpha: 0.08)),
          const SizedBox(height: 14),
          Row(
            children: [
              for (int i = 0; i < 4; i++) ...[
                Expanded(child: _bone(double.infinity, 36)),
                if (i < 3) const SizedBox(width: 16),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Widget _bone(double w, double h) => Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.07),
          borderRadius: BorderRadius.circular(4),
        ),
      );
}

// ─────────────────────────────────────────────────────────────────────────────
// 4d. ERROR RETRY  (error state)
// ─────────────────────────────────────────────────────────────────────────────

class _ErrorRetry extends StatelessWidget {
  const _ErrorRetry({required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppTheme.navy,
        border: Border.all(
            color: AppTheme.steel.withValues(alpha: 0.3), width: 0.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.wifi_off_outlined, color: AppTheme.silver, size: 24),
          const SizedBox(height: 8),
          Text('Couldn\'t load insights',
              style: GoogleFonts.dmSans(fontSize: 11, color: AppTheme.silver)),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: onRetry,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: _kGoldBorder30, width: 0.5),
              ),
              child: Text(
                'Retry',
                style: GoogleFonts.dmSans(
                  fontSize: 10, fontWeight: FontWeight.w600,
                  color: AppTheme.gold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 5. ACTION CTA
// Gold gradient pill showing insight.actionCta + arrow
// ─────────────────────────────────────────────────────────────────────────────

class _ActionCta extends StatelessWidget {
  const _ActionCta({required this.insight});

  final DailyInsight insight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 12, 18, 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0x1FE3C39D), Color(0x0AE3C39D)], // gold 12%→4%
        ),
        border: Border.all(color: _kGoldBorder30, width: 0.5),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TONIGHT',
                  style: GoogleFonts.dmSans(
                    fontSize: 8, fontWeight: FontWeight.w700,
                    color: _kGoldText60, letterSpacing: 0.8,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  insight.actionCta!,
                  style: GoogleFonts.newsreader(
                    fontSize: 15, fontWeight: FontWeight.w400,
                    color: AppTheme.navy, letterSpacing: -0.15,
                  ),
                ),
                if (insight.actionDetail != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      insight.actionDetail!,
                      style: GoogleFonts.dmSans(
                        fontSize: 10, color: AppTheme.steel,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const Text(
            '→',
            style: TextStyle(fontSize: 20, color: AppTheme.gold),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 7. § SUBJECTS SECTION HEADER
// ─────────────────────────────────────────────────────────────────────────────

class _SubjectSectionHeader extends StatelessWidget {
  const _SubjectSectionHeader(
      {required this.examTrack, required this.count});

  final String examTrack;
  final int    count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          '§ Subjects',
          style: GoogleFonts.dmSans(
            fontSize: 10, fontWeight: FontWeight.w700,
            color: AppTheme.steel, letterSpacing: 2.5,
          ),
        ),
        Text(
          '$examTrack · $count',
          style: GoogleFonts.dmSans(
            fontSize: 9, color: AppTheme.silver, letterSpacing: 0.45,
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 6. FEATURED / PROBLEM SUBJECT TILE  (full-width, alarm styling)
// Reused for the problem subject tile (step 6) — same as before.
// ─────────────────────────────────────────────────────────────────────────────

class _FeaturedSubjectTile extends StatelessWidget {
  const _FeaturedSubjectTile({required this.data, required this.ghostNum});

  final SubjectData data;
  final String      ghostNum;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppTheme.alarmRed, width: 1),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0x14B43A3A), _kSandGrad4],
        ),
      ),
      child: Stack(
        children: [
          // Top alarm stripe (3px)
          Positioned(
            top: 0, left: 0, right: 0,
            child: SizedBox(
              height: 3,
              child: CustomPaint(painter: _AlarmStripePainter()),
            ),
          ),
          // Ghost number
          Positioned(
            top: 6, right: -4,
            child: Text(
              ghostNum,
              style: GoogleFonts.newsreader(
                fontSize: 96, fontWeight: FontWeight.w400,
                color: AppTheme.alarmRed.withValues(alpha: 0.08),
                height: 0.7, letterSpacing: -7.68,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 19, 18, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Vertical red rail (3px)
                    Container(
                      width: 3,
                      constraints: const BoxConstraints(minHeight: 56),
                      margin: const EdgeInsets.only(top: 2),
                      decoration: BoxDecoration(
                        color: AppTheme.alarmRed,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title row: name + "N days behind"
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                data.name,
                                style: GoogleFonts.newsreader(
                                  fontSize: 20, fontWeight: FontWeight.w400,
                                  color: AppTheme.navy, letterSpacing: -0.40,
                                ),
                              ),
                              const SizedBox(width: 8),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '${data.daysBehind} ',
                                      style: GoogleFonts.newsreader(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: AppTheme.alarmRed,
                                        height: 1.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'days behind',
                                      style: GoogleFonts.dmSans(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w700,
                                        color: AppTheme.alarmRed,
                                        letterSpacing: 0.9,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'Physical chem lagging · organic ahead',
                            style: GoogleFonts.dmSans(
                              fontSize: 10.5, color: AppTheme.steel,
                              height: 1.4,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 7, vertical: 2),
                                decoration: BoxDecoration(
                                  color: AppTheme.navy,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Text(
                                  '+ 45 min tonight',
                                  style: GoogleFonts.dmSans(
                                    fontSize: 8.5, fontWeight: FontWeight.w700,
                                    color: AppTheme.gold, letterSpacing: 0.51,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 6),
                              Text(
                                'estimated catch-up',
                                style: GoogleFonts.dmSans(
                                    fontSize: 9, color: AppTheme.silver),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Right: "54%" + chapter ratio
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '${data.percent}',
                                style: GoogleFonts.newsreader(
                                  fontSize: 32, fontWeight: FontWeight.w400,
                                  color: AppTheme.navy, height: 1.0,
                                ),
                              ),
                              TextSpan(
                                text: '%',
                                style: GoogleFonts.newsreader(
                                  fontSize: 14,
                                  color: AppTheme.alarmRed,
                                  height: 1.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 1),
                        Text(
                          '${data.chaptersCompleted} of ${data.totalChapters}',
                          style: GoogleFonts.dmSans(
                            fontSize: 8.5, color: AppTheme.silver,
                            letterSpacing: 0.51,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                _FeaturedProgressBar(data: data),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Progress bar (4px, silver track, red fill) + navy class tick + labels.
class _FeaturedProgressBar extends StatelessWidget {
  const _FeaturedProgressBar({required this.data});

  final SubjectData data;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        final w      = constraints.maxWidth;
        final fillW  = w * data.percent / 100;
        final classX = (w * data.classPercent / 100 - 1).clamp(0.0, w - 2);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 10,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 0, right: 0, bottom: 0,
                    child: Stack(
                      children: [
                        Container(
                          height: 4,
                          decoration: BoxDecoration(
                            color: _kFeatTrack,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        Container(
                          width: fillW, height: 4,
                          decoration: BoxDecoration(
                            color: AppTheme.alarmRed,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: classX, top: 0,
                    child: Container(
                      width: 2, height: 10,
                      decoration: BoxDecoration(
                        color: AppTheme.navy,
                        borderRadius: BorderRadius.circular(1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            SizedBox(
              height: 11,
              child: Stack(
                children: [
                  Positioned(
                    left: 0, top: 0,
                    child: Text(
                      'SOMI (you)',
                      style: GoogleFonts.dmSans(
                        fontSize: 8, color: AppTheme.silver,
                        letterSpacing: 0.64,
                      ),
                    ),
                  ),
                  Positioned(
                    right: w * 0.28, top: 0,
                    child: Text(
                      'Class at ${data.classPercent}% ↑',
                      style: GoogleFonts.dmSans(
                        fontSize: 8, fontWeight: FontWeight.w600,
                        color: AppTheme.navy, letterSpacing: 0.64,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 8. COMPACT SUBJECT ROW (3-column grid)
// ─────────────────────────────────────────────────────────────────────────────

class _CompactSubjectRow extends StatelessWidget {
  const _CompactSubjectRow({required this.items});

  final List<(SubjectData, int)> items;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < items.length; i++) ...[
          if (i > 0) const SizedBox(width: 6),
          Expanded(
            child: _CompactSubjectTile(
              data: items[i].$1,
              ghostNum: items[i].$2.toString().padLeft(2, '0'),
            ),
          ),
        ],
      ],
    );
  }
}

class _CompactSubjectTile extends StatelessWidget {
  const _CompactSubjectTile({required this.data, required this.ghostNum});

  final SubjectData data;
  final String      ghostNum;

  Color get _dotColor {
    if (data.daysBehind == 0) return AppTheme.okGreenDot;
    if (data.daysBehind <= 2) return AppTheme.warnAmberDot;
    return AppTheme.alarmRed;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: _kTileBorder, width: 0.5),
      ),
      child: Stack(
        children: [
          // Ghost number: serif 42px, navy 5%
          Positioned(
            top: 3, right: 3,
            child: Text(
              ghostNum,
              style: GoogleFonts.newsreader(
                fontSize: 42,
                color: AppTheme.navy.withValues(alpha: 0.05),
                height: 0.7,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 12, 10, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 5, height: 5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, color: _dotColor,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  data.name,
                  style: GoogleFonts.newsreader(
                    fontSize: 13, color: AppTheme.navy, letterSpacing: -0.13,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1, bottom: 6),
                  child: Text(
                    data.daysBehind == 0
                        ? '${data.chaptersCompleted} of ${data.totalChapters}'
                        : '${data.daysBehind}d behind',
                    style: GoogleFonts.dmSans(
                      fontSize: 8.5,
                      color: data.daysBehind > 0
                          ? AppTheme.warnAmberDot
                          : AppTheme.silver,
                      fontWeight: data.daysBehind > 0
                          ? FontWeight.w600
                          : FontWeight.w400,
                      letterSpacing: 0.34,
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '${data.percent}',
                        style: GoogleFonts.newsreader(
                          fontSize: 22, color: AppTheme.navy, height: 1.0,
                        ),
                      ),
                      TextSpan(
                        text: '%',
                        style: GoogleFonts.newsreader(
                          fontSize: 10, color: AppTheme.silver, height: 1.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                _CompactProgressBar(data: data),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CompactProgressBar extends StatelessWidget {
  const _CompactProgressBar({required this.data});

  final SubjectData data;

  @override
  Widget build(BuildContext context) {
    final fillColor = _compactFillColor(data);

    return LayoutBuilder(
      builder: (ctx, c) {
        final w      = c.maxWidth;
        final fillW  = w * data.percent / 100;
        final classX =
            (w * data.classPercent / 100 - 0.75).clamp(0.0, w - 1.5);

        return SizedBox(
          height: 4,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 0, right: 0, bottom: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1),
                  child: SizedBox(
                    height: 2,
                    child: Stack(
                      children: [
                        Container(height: 2, color: _kCompactTrack),
                        Container(
                            width: fillW, height: 2, color: fillColor),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: classX, top: 0,
                child: Container(
                  width: 1.5, height: 4,
                  decoration: BoxDecoration(
                    color: AppTheme.navy,
                    borderRadius: BorderRadius.circular(0.75),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 9. YESTERDAY STRIP  (compact navy pill: study time | streak | accuracy)
// ─────────────────────────────────────────────────────────────────────────────

class _YesterdayStrip extends StatelessWidget {
  const _YesterdayStrip({
    required this.streak,
    required this.yesterdayMinutes,
    required this.accuracyPct,
  });

  final int streak, yesterdayMinutes, accuracyPct;

  @override
  Widget build(BuildContext context) {
    final hh      = yesterdayMinutes ~/ 60;
    final mm      = yesterdayMinutes % 60;
    final timeStr = yesterdayMinutes > 0
        ? (hh > 0 ? (mm > 0 ? '${hh}h ${mm}m' : '${hh}h') : '${mm}m')
        : '—';

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: AppTheme.navy,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Expanded(child: _stripCell('YESTERDAY', timeStr, 'study', false)),
          _vDivider(),
          Expanded(
            child: _stripCell(
              'STREAK',
              streak > 0 ? '$streak' : '—',
              streak > 0 ? 'days' : '',
              true, // gold value
            ),
          ),
          _vDivider(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'ACC',
                  style: GoogleFonts.dmSans(
                    fontSize: 7, fontWeight: FontWeight.w700,
                    color: _kGoldText60, letterSpacing: 0.7,
                  ),
                ),
                const SizedBox(height: 2),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: accuracyPct > 0 ? '$accuracyPct' : '—',
                        style: GoogleFonts.newsreader(
                          fontSize: 16, color: Colors.white, height: 1.0,
                        ),
                      ),
                      if (accuracyPct > 0)
                        TextSpan(
                          text: '%',
                          style: GoogleFonts.newsreader(
                            fontSize: 10, color: AppTheme.silver, height: 1.0,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _stripCell(
    String label,
    String value,
    String unit,
    bool isGold,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.dmSans(
            fontSize: 7, fontWeight: FontWeight.w700,
            color: _kGoldText60, letterSpacing: 0.7,
          ),
        ),
        const SizedBox(height: 2),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: value,
                style: GoogleFonts.newsreader(
                  fontSize: 16,
                  color: isGold ? AppTheme.gold : Colors.white,
                  height: 1.0,
                ),
              ),
              if (unit.isNotEmpty)
                TextSpan(
                  text: '  $unit',
                  style: GoogleFonts.dmSans(
                    fontSize: 9, color: AppTheme.silver, height: 1.0,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _vDivider() => Container(
        width: 0.5,
        height: 28,
        margin: const EdgeInsets.symmetric(horizontal: 14),
        color: _kSilverDiv20,
      );
}

// ─────────────────────────────────────────────────────────────────────────────
// 10. LAST 4 EXAMS MINI CHART
// Horizontal bars: green ≥70%, amber 50–70%, red <50%, stripe=missed, dashed=upcoming
// ─────────────────────────────────────────────────────────────────────────────

class _ExamMiniChartSection extends StatelessWidget {
  const _ExamMiniChartSection({required this.exams});

  final List<UpcomingExam> exams;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '§ Last Exams',
              style: GoogleFonts.dmSans(
                fontSize: 10, fontWeight: FontWeight.w700,
                color: AppTheme.steel, letterSpacing: 2.5,
              ),
            ),
            GestureDetector(
              onTap: () {
                // TODO: navigate to /dashboard/exam when route exists
              },
              child: Text(
                'See all →',
                style: GoogleFonts.dmSans(
                  fontSize: 9, color: AppTheme.silver,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 90,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              for (int i = 0; i < exams.length; i++) ...[
                Expanded(child: _ExamBar(exam: exams[i])),
                if (i < exams.length - 1) const SizedBox(width: 6),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _ExamBar extends StatelessWidget {
  const _ExamBar({required this.exam});

  final UpcomingExam exam;

  static const double _maxH = 64.0;

  bool get _isMissed   => exam.status == 'missed';
  bool get _isUpcoming =>
      exam.status == 'upcoming' || exam.status == 'scheduled';

  Color get _barColor {
    if (exam.score == null || exam.total == null || exam.total! <= 0) {
      return AppTheme.steel.withValues(alpha: 0.5);
    }
    final pct = exam.score! / exam.total!;
    if (pct >= 0.7) return AppTheme.okGreenDot;
    if (pct >= 0.5) return AppTheme.warnAmberDot;
    return AppTheme.alarmRed;
  }

  double get _barH {
    if (_isMissed) return 40.0;
    if (_isUpcoming) return 50.0;
    if (exam.score != null && exam.total != null && exam.total! > 0) {
      return (_maxH * exam.score! / exam.total!).clamp(8.0, _maxH);
    }
    return 20.0;
  }

  String get _dateStr {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
    ];
    final dt = exam.scheduledAt;
    return '${dt.day} ${months[dt.month - 1]}';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _isUpcoming
            ? Container(
                height: _barH,
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(4)),
                  border: Border.all(
                    color: AppTheme.silver.withValues(alpha: 0.4),
                    width: 1,
                  ),
                ),
              )
            : ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(4)),
                child: _isMissed
                    ? SizedBox(
                        height: _barH,
                        child: CustomPaint(painter: _AlarmStripePainter()),
                      )
                    : Container(height: _barH, color: _barColor),
              ),
        const SizedBox(height: 4),
        Text(
          _dateStr,
          style: GoogleFonts.dmSans(
            fontSize: 7, color: AppTheme.silver, letterSpacing: 0.35,
          ),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 11. MAMA FOOTER NOTE  (insight-driven, replaces hardcoded pull quote)
// Left border + gradient bg + tilted MAMA badge + italic body
// ─────────────────────────────────────────────────────────────────────────────

class _MamaFooterNote extends StatelessWidget {
  const _MamaFooterNote({this.insight, this.fallbackSubject});

  final DailyInsight? insight;
  final SubjectData?  fallbackSubject;

  String get _body {
    if (insight?.body?.isNotEmpty == true) return insight!.body!;
    if (fallbackSubject != null) {
      return '${fallbackSubject!.name} class lo Bohr model chesindi, '
          'SOMI lo Rutherford daggara. Tonight 20 min catch-up.';
    }
    return 'Ravi is making steady progress. Keep encouraging '
        'him with short evening sessions.';
  }

  Color get _borderColor {
    if (insight?.severity == 'red') return AppTheme.alarmRed;
    if (insight?.severity == 'amber') return AppTheme.warnAmberDot;
    return AppTheme.sand;
  }

  Color get _gradStart {
    if (insight?.severity == 'red') return _kAlarmGrad6;
    if (insight?.severity == 'amber') return const Color(0x0FD97706);
    return const Color(0x0AE3C39D); // gold 4%
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 12, 14, 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border(left: BorderSide(color: _borderColor, width: 2)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [_gradStart, const Color(0x00000000)],
          stops: const [0.0, 0.4],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tilted MAMA badge
          Transform.rotate(
            angle: -2.0 * math.pi / 180,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2.5),
              decoration: BoxDecoration(
                color: AppTheme.sand,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'MAMA',
                style: GoogleFonts.dmSans(
                  fontSize: 7, fontWeight: FontWeight.w900,
                  color: Colors.white, letterSpacing: 0.84,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              _body,
              style: GoogleFonts.newsreader(
                fontSize: 13, fontStyle: FontStyle.italic,
                color: AppTheme.steel, height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 12. CLASSROOM MICRO-STATUS ROW
// ─────────────────────────────────────────────────────────────────────────────

class _ClassroomStatusRow extends StatelessWidget {
  const _ClassroomStatusRow({required this.parentFirst});

  final String parentFirst;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('/classroom'),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: _kAmberBg6,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: _kAmberBorder30, width: 0.5),
        ),
        child: Row(
          children: [
            const Icon(Icons.access_time,
                size: 14, color: AppTheme.warnAmberDot),
            const SizedBox(width: 10),
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Classroom · 2 days not logged. ',
                      style: GoogleFonts.dmSans(
                        fontSize: 11, fontWeight: FontWeight.w700,
                        color: _kClassroomTxt, height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: '$parentFirst, log today\'s class?',
                      style: GoogleFonts.dmSans(
                        fontSize: 11, color: AppTheme.steel,
                        fontStyle: FontStyle.italic, height: 1.3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              '→',
              style: TextStyle(fontSize: 18, color: AppTheme.warnAmberDot),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// SHARED: HERO STAT + STAT DIVIDER  (used in hero card, celebration hero)
// ─────────────────────────────────────────────────────────────────────────────

class _HeroStat extends StatelessWidget {
  const _HeroStat({
    required this.value,
    required this.label,
    this.suffix,
    this.valueColor,
  });

  final String  value;
  final String  label;
  final String? suffix;
  final Color?  valueColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(
                  text: value,
                  style: GoogleFonts.newsreader(
                    fontSize: 18, fontWeight: FontWeight.w400,
                    color: valueColor ?? Colors.white, height: 1.0,
                  ),
                ),
                if (suffix != null)
                  TextSpan(
                    text: suffix!,
                    style: GoogleFonts.newsreader(
                      fontSize: 10, color: AppTheme.silver, height: 1.0,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 3),
          Text(
            label.toUpperCase(),
            style: GoogleFonts.dmSans(
              fontSize: 7.5, fontWeight: FontWeight.w600,
              color: AppTheme.steel, letterSpacing: 1.5,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class _StatDivider extends StatelessWidget {
  const _StatDivider();

  @override
  Widget build(BuildContext context) => Container(
        width: 0.5,
        height: 30,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        color: _kSilverDiv20,
      );
}
