// lib/screens/subject/subject_deep_dive.dart
//
// SOMI Connect — Subject Deep-Dive Screen
// Tapped from Home bento tiles → full chapter, exam history, quizzes, MAMA.

import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/theme.dart';
import '../../models/upcoming_exam.dart';
import '../../providers/subject_provider.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Palette constants  (mirror today_tab.dart)
// ─────────────────────────────────────────────────────────────────────────────

const Color _kPaper       = Color(0xFFFBF7EE);
const Color _kGoldLine20  = Color(0x33E3C39D);
const Color _kSilverDiv15 = Color(0x26A4B5C4);
const Color _kSilverDiv20 = Color(0x33A4B5C4);
const Color _kGoldText60  = Color(0x99E3C39D);
const Color _kAlarmGrad6  = Color(0x0FB43A3A);
const Color _kTileBorder  = Color(0xFFCDD5DB);

// ─────────────────────────────────────────────────────────────────────────────
// Data models
// ─────────────────────────────────────────────────────────────────────────────

class ChapterInfo {
  const ChapterInfo({
    required this.number,
    required this.name,
    required this.somiProgress,
    required this.status,
    this.isCurrentClass = false,
  });

  final String number;
  final String name;
  final int    somiProgress; // 0–100
  final String status;
  final bool   isCurrentClass;
}

class _SubjectSummary {
  const _SubjectSummary({
    required this.percent,
    required this.classPercent,
    required this.chaptersCompleted,
    required this.totalChapters,
    required this.daysBehind,
  });

  final int percent;
  final int classPercent;
  final int chaptersCompleted;
  final int totalChapters;
  final int daysBehind;

  int get gap => percent - classPercent;

  Color get stripeColor {
    if (daysBehind <= 0) return AppTheme.gold;
    if (daysBehind <= 2) return AppTheme.warnAmberDot;
    return AppTheme.alarmRed;
  }

  Color get percentColor {
    if (daysBehind <= 0) return AppTheme.gold;
    if (daysBehind <= 2) return AppTheme.warnAmberDot;
    return AppTheme.alarmRed;
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Hardcoded subject summaries  (matches _demoSubjects in today_tab.dart)
// ─────────────────────────────────────────────────────────────────────────────

final _kSubjectSummaries = <String, _SubjectSummary>{
  'Chemistry': const _SubjectSummary(
      percent: 54, classPercent: 68, chaptersCompleted: 14,
      totalChapters: 26, daysBehind: 3),
  'Physics':   const _SubjectSummary(
      percent: 73, classPercent: 72, chaptersCompleted: 16,
      totalChapters: 22, daysBehind: 0),
  'Botany':    const _SubjectSummary(
      percent: 88, classPercent: 85, chaptersCompleted: 22,
      totalChapters: 25, daysBehind: 0),
  'Zoology':   const _SubjectSummary(
      percent: 62, classPercent: 65, chaptersCompleted: 14,
      totalChapters: 22, daysBehind: 1),
};

// TODO: wire chapter data to a subjects table in Supabase (v2)
final _kSubjectChapters = <String, List<ChapterInfo>>{
  'Chemistry': const [
    ChapterInfo(number: '01', name: 'Solutions',         somiProgress: 100, status: 'Mastered'),
    ChapterInfo(number: '02', name: 'Electrochemistry',  somiProgress: 100, status: 'Mastered'),
    ChapterInfo(number: '03', name: 'Chemical Kinetics', somiProgress: 85,  status: 'In progress'),
    ChapterInfo(number: '04', name: 'Atomic Structure',  somiProgress: 62,
        status: 'In progress — Rutherford done, Bohr pending'),
    ChapterInfo(number: '05', name: "Bohr's Model",      somiProgress: 25,
        status: 'In progress — 2 of 7 concepts', isCurrentClass: true),
    ChapterInfo(number: '06', name: 'Quantum Mechanics', somiProgress: 0,  status: 'Not started'),
    ChapterInfo(number: '07', name: 'Chemical Bonding',  somiProgress: 0,  status: 'Not started'),
  ],
  'Physics': const [
    ChapterInfo(number: '01', name: 'Electric Charges & Fields', somiProgress: 100, status: 'Mastered'),
    ChapterInfo(number: '02', name: 'Electrostatic Potential',   somiProgress: 100, status: 'Mastered'),
    ChapterInfo(number: '03', name: 'Current Electricity',       somiProgress: 90,  status: 'In progress'),
    ChapterInfo(number: '04', name: 'Moving Charges & Magnetism',somiProgress: 75,
        status: 'In progress', isCurrentClass: true),
    ChapterInfo(number: '05', name: 'Magnetism & Matter',        somiProgress: 40,
        status: 'In progress — 3 of 8 concepts'),
    ChapterInfo(number: '06', name: 'Electromagnetic Induction', somiProgress: 0, status: 'Not started'),
    ChapterInfo(number: '07', name: 'Alternating Current',       somiProgress: 0, status: 'Not started'),
  ],
  'Botany': const [
    ChapterInfo(number: '01', name: 'Reproduction in Plants',         somiProgress: 100, status: 'Mastered'),
    ChapterInfo(number: '02', name: 'Sexual Reproduction',            somiProgress: 100, status: 'Mastered'),
    ChapterInfo(number: '03', name: 'Human Reproduction',             somiProgress: 95,  status: 'In progress'),
    ChapterInfo(number: '04', name: 'Reproductive Health',            somiProgress: 88,  status: 'In progress'),
    ChapterInfo(number: '05', name: 'Principles of Inheritance',      somiProgress: 80,
        status: 'In progress', isCurrentClass: true),
    ChapterInfo(number: '06', name: 'Molecular Basis of Inheritance', somiProgress: 45,
        status: 'In progress — 4 of 9 concepts'),
    ChapterInfo(number: '07', name: 'Evolution',                      somiProgress: 0, status: 'Not started'),
  ],
  'Zoology': const [
    ChapterInfo(number: '01', name: 'Human Health & Disease',    somiProgress: 100, status: 'Mastered'),
    ChapterInfo(number: '02', name: 'Microbes in Human Welfare', somiProgress: 72,  status: 'In progress'),
    ChapterInfo(number: '03', name: 'Biotechnology Principles',  somiProgress: 60,
        status: 'In progress', isCurrentClass: true),
    ChapterInfo(number: '04', name: 'Biotechnology Applications',somiProgress: 20,
        status: 'In progress — 2 of 10 concepts'),
    ChapterInfo(number: '05', name: 'Organisms & Populations',   somiProgress: 0, status: 'Not started'),
    ChapterInfo(number: '06', name: 'Ecosystem',                 somiProgress: 0, status: 'Not started'),
  ],
};

const _kMamaNotes = <String, String>{
  'Chemistry':
      'Physical chemistry lo 3 chapters back unnaaru. Organic chemistry solid undi. '
      'Next 2 weeks physical concepts ki focus cheyyamani encourage cheyyandi.',
  'Physics':
      'Electric fields strong undi. Moving Charges lo class tho align ayyi unnaadu. '
      'Tonight 30 min Magnetism practice cheyyandi — rank improve avutuundi.',
  'Botany':
      'Botany lo ahead undi — class average ni 3 points beat chesindi. '
      'Molecular Inheritance ki early start help avutuundi. Encourage cheyyandi!',
  'Zoology':
      'Biotechnology Principles lo class tho sync undi. Health & Disease mastered. '
      'Next chapter ki jump avvadam consider cheyyandi — momentum undi.',
};

// ─────────────────────────────────────────────────────────────────────────────
// Alarm stripe painter  (mirrors today_tab.dart)
// ─────────────────────────────────────────────────────────────────────────────

class _AlarmStripePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = AppTheme.alarmRed;
    const stripe = 6.0;
    const period = 12.0;
    for (double x = -size.height; x < size.width + size.height; x += period) {
      final path = Path()
        ..moveTo(x,                        size.height)
        ..lineTo(x + size.height,          0)
        ..lineTo(x + size.height + stripe, 0)
        ..lineTo(x + stripe,               size.height)
        ..close();
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter _) => false;
}

// ─────────────────────────────────────────────────────────────────────────────
// Helpers
// ─────────────────────────────────────────────────────────────────────────────

String _shortDate(DateTime dt) {
  const months = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
  ];
  return '${dt.day} ${months[dt.month - 1]} ${dt.year}';
}

// ─────────────────────────────────────────────────────────────────────────────
// Root screen
// ─────────────────────────────────────────────────────────────────────────────

class SubjectDeepDive extends ConsumerWidget {
  const SubjectDeepDive({super.key, required this.subjectName});

  final String subjectName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summary   = _kSubjectSummaries[subjectName]
        ?? _kSubjectSummaries['Chemistry']!;
    final chapters  = _kSubjectChapters[subjectName] ?? const [];
    final mamaNote  = _kMamaNotes[subjectName]
        ?? 'Ravi is making steady progress in $subjectName. '
           'Short evening revision sessions will help consolidate concepts.';
    final dataAsync = ref.watch(subjectDataProvider(subjectName));

    return Scaffold(
      backgroundColor: _kPaper,
      appBar: AppBar(
        backgroundColor: _kPaper,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, size: 20),
          color: AppTheme.navy,
          onPressed: () => context.pop(),
          splashRadius: 20,
        ),
        title: Text(
          subjectName,
          style: GoogleFonts.newsreader(
            fontSize: 18, fontWeight: FontWeight.w400, color: AppTheme.navy,
          ),
        ),
        centerTitle: false,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(22, 4, 22, 80),
        children: [

          // ── 1. STATUS SUMMARY CARD ──────────────────────────────────────
          _StatusSummaryCard(subjectName: subjectName, summary: summary),
          const SizedBox(height: 20),

          // ── 2. § CHAPTERS ───────────────────────────────────────────────
          _SectionHeader(
            label: 'Chapters',
            detail: 'NEET 2027 · ${chapters.length}',
          ),
          const SizedBox(height: 10),
          ...chapters.map((ch) => _ChapterRow(chapter: ch)),
          const SizedBox(height: 20),

          // ── 3. § EXAM HISTORY ───────────────────────────────────────────
          const _SectionHeader(label: 'Exam History', detail: 'LAST 10'),
          const SizedBox(height: 10),
          _ExamHistorySection(dataAsync: dataAsync),
          const SizedBox(height: 20),

          // ── 4. § RECENT QUIZZES ─────────────────────────────────────────
          const _SectionHeader(label: 'Recent Quizzes', detail: 'LAST 5'),
          const SizedBox(height: 10),
          _QuizSection(dataAsync: dataAsync),
          const SizedBox(height: 20),

          // ── 5. § MAMA ANALYSIS ──────────────────────────────────────────
          const _SectionHeader(label: 'MAMA Analysis'),
          const SizedBox(height: 10),
          _MamaAnalysisCard(text: mamaNote, daysBehind: summary.daysBehind),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 1. STATUS SUMMARY CARD
// Navy bg, top stripe, big percent, subtitle, 3-stat strip
// ─────────────────────────────────────────────────────────────────────────────

class _StatusSummaryCard extends StatelessWidget {
  const _StatusSummaryCard({
    required this.subjectName,
    required this.summary,
  });

  final String          subjectName;
  final _SubjectSummary summary;

  @override
  Widget build(BuildContext context) {
    final gap      = summary.gap;
    final gapLabel = gap >= 0 ? '+$gap%' : '$gap%';
    final gapColor = gap >= 0 ? AppTheme.okGreenDot : AppTheme.alarmRed;
    final isRed    = summary.daysBehind >= 3;

    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppTheme.navy,
      ),
      child: Stack(
        children: [
          // Top stripe
          Positioned(
            top: 0, left: 0, right: 0,
            child: isRed
                ? SizedBox(
                    height: 2,
                    child: CustomPaint(painter: _AlarmStripePainter()),
                  )
                : Container(
                    height: 2,
                    color: summary.stripeColor.withValues(alpha: 0.7),
                  ),
          ),
          // Gold hairline below stripe
          Positioned(
            top: 2, left: 22, right: 22,
            child: Container(height: 1, color: _kGoldLine20),
          ),
          // Ghost subject initial
          Positioned(
            top: 2, right: -8,
            child: Text(
              subjectName.isNotEmpty ? subjectName[0] : '',
              style: GoogleFonts.newsreader(
                fontSize: 120, fontWeight: FontWeight.w400,
                color: AppTheme.gold.withValues(alpha: 0.04),
                height: 0.7, letterSpacing: -9.6,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 20, 22, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Pill badge
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: summary.stripeColor.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                        color: summary.stripeColor.withValues(alpha: 0.4),
                        width: 0.5),
                  ),
                  child: Text(
                    'NEET 2027 · CLASS 12',
                    style: GoogleFonts.dmSans(
                      fontSize: 8, fontWeight: FontWeight.w700,
                      color: summary.stripeColor, letterSpacing: 0.64,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Big serif percent
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '${summary.percent}',
                        style: GoogleFonts.newsreader(
                          fontSize: 52, fontWeight: FontWeight.w400,
                          color: summary.percentColor,
                          height: 1.0, letterSpacing: -2.0,
                        ),
                      ),
                      TextSpan(
                        text: '%',
                        style: GoogleFonts.newsreader(
                          fontSize: 22,
                          color: summary.percentColor.withValues(alpha: 0.6),
                          height: 1.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                // Italic subtitle
                Text(
                  '${summary.chaptersCompleted} of ${summary.totalChapters} chapters'
                  '${summary.daysBehind > 0 ? ' · ${summary.daysBehind} day${summary.daysBehind == 1 ? "" : "s"} behind class' : ' · on track'}',
                  style: GoogleFonts.dmSans(
                    fontSize: 11, color: AppTheme.steel,
                    fontStyle: FontStyle.italic, height: 1.3,
                  ),
                ),
                const SizedBox(height: 18),
                // 3-stat bottom strip
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(color: _kSilverDiv15, width: 1)),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Row(
                    children: [
                      _StatCell(
                          label: 'SOMI',
                          value: '${summary.percent}%',
                          color: Colors.white),
                      const _StatVDivider(),
                      _StatCell(
                          label: 'CLASS',
                          value: '${summary.classPercent}%',
                          color: Colors.white),
                      const _StatVDivider(),
                      _StatCell(
                          label: 'GAP',
                          value: gapLabel,
                          color: gapColor),
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

class _StatCell extends StatelessWidget {
  const _StatCell({
    required this.label,
    required this.value,
    required this.color,
  });

  final String label;
  final String value;
  final Color  color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
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
          Text(
            value,
            style: GoogleFonts.newsreader(
              fontSize: 18, fontWeight: FontWeight.w400,
              color: color, height: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatVDivider extends StatelessWidget {
  const _StatVDivider();

  @override
  Widget build(BuildContext context) => Container(
        width: 0.5, height: 28,
        margin: const EdgeInsets.symmetric(horizontal: 14),
        color: _kSilverDiv20,
      );
}

// ─────────────────────────────────────────────────────────────────────────────
// § SECTION HEADER  (mirrors today_tab.dart style)
// ─────────────────────────────────────────────────────────────────────────────

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.label, this.detail});

  final String  label;
  final String? detail;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          '§ $label',
          style: GoogleFonts.dmSans(
            fontSize: 10, fontWeight: FontWeight.w700,
            color: AppTheme.steel, letterSpacing: 2.5,
          ),
        ),
        if (detail != null)
          Text(
            detail!,
            style: GoogleFonts.dmSans(
              fontSize: 9, color: AppTheme.silver, letterSpacing: 0.45,
            ),
          ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// CHAPTER ROW
// Ghost number, chapter name, status sub-label, "Class here ↓" tick, progress
// ─────────────────────────────────────────────────────────────────────────────

class _ChapterRow extends StatelessWidget {
  const _ChapterRow({required this.chapter});

  final ChapterInfo chapter;

  Color get _statusColor {
    if (chapter.status == 'Mastered') return AppTheme.okGreenDot;
    if (chapter.status.startsWith('Not started')) return AppTheme.silver;
    return AppTheme.steel;
  }

  Color get _progressFill {
    if (chapter.somiProgress >= 85) return AppTheme.okGreenDot;
    if (chapter.somiProgress >= 50) return AppTheme.gold;
    if (chapter.somiProgress >  0)  return AppTheme.warnAmberDot;
    return AppTheme.silver.withValues(alpha: 0.3);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: chapter.isCurrentClass
              ? AppTheme.navy.withValues(alpha: 0.035)
              : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: chapter.isCurrentClass
                ? AppTheme.navy.withValues(alpha: 0.14)
                : _kTileBorder,
            width: 0.5,
          ),
        ),
        child: Stack(
          children: [
            // Ghost chapter number (serif, gold 12%)
            Positioned(
              top: 4, left: 10,
              child: Text(
                chapter.number,
                style: GoogleFonts.newsreader(
                  fontSize: 36, fontWeight: FontWeight.w400,
                  color: AppTheme.gold.withValues(alpha: 0.12),
                  height: 0.8,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 11, 14, 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Left: name + status + optional "Class here ↓" tag
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                chapter.name,
                                style: GoogleFonts.newsreader(
                                  fontSize: 14, fontWeight: FontWeight.w400,
                                  color: AppTheme.navy, letterSpacing: -0.14,
                                ),
                              ),
                            ),
                            if (chapter.isCurrentClass) ...[
                              const SizedBox(width: 6),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: AppTheme.navy.withValues(alpha: 0.08),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  'Class here ↓',
                                  style: GoogleFonts.dmSans(
                                    fontSize: 7.5, fontWeight: FontWeight.w700,
                                    color: AppTheme.navy, letterSpacing: 0.38,
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                        const SizedBox(height: 2),
                        Text(
                          chapter.status,
                          style: GoogleFonts.dmSans(
                            fontSize: 9.5, color: _statusColor, height: 1.3,
                            fontStyle: chapter.status.startsWith('In progress')
                                ? FontStyle.italic
                                : FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Right: percent + mini progress bar
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        chapter.somiProgress > 0
                            ? '${chapter.somiProgress}%'
                            : '—',
                        style: GoogleFonts.newsreader(
                          fontSize: 14, fontWeight: FontWeight.w400,
                          color: chapter.somiProgress >= 85
                              ? AppTheme.okGreenDot
                              : AppTheme.navy,
                          height: 1.0,
                        ),
                      ),
                      const SizedBox(height: 4),
                      SizedBox(
                        width: 48, height: 3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(1.5),
                          child: LinearProgressIndicator(
                            value: chapter.somiProgress / 100,
                            backgroundColor: const Color(0xFFE5E7EB),
                            valueColor: AlwaysStoppedAnimation<Color>(_progressFill),
                            minHeight: 3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// EXAM HISTORY SECTION
// ─────────────────────────────────────────────────────────────────────────────

class _ExamHistorySection extends StatelessWidget {
  const _ExamHistorySection({required this.dataAsync});

  final AsyncValue<SubjectDeepData> dataAsync;

  @override
  Widget build(BuildContext context) {
    return dataAsync.when(
      loading: () => _Skeleton(height: 60),
      error: (_, __) => _EmptyNote('Unable to load exam history'),
      data: (data) {
        if (data.exams.isEmpty) return _EmptyNote('No exams recorded yet');
        return Column(
          children: data.exams.map((e) => _ExamRow(exam: e)).toList(),
        );
      },
    );
  }
}

class _ExamRow extends StatelessWidget {
  const _ExamRow({required this.exam});

  final UpcomingExam exam;

  bool get _isMissed   => exam.status == 'missed';
  bool get _isUpcoming =>
      exam.status == 'upcoming' || exam.status == 'scheduled';

  Color get _scoreColor {
    if (exam.score == null || exam.total == null || exam.total! <= 0) {
      return AppTheme.silver;
    }
    final pct = exam.score! / exam.total!;
    if (pct >= 0.7) return AppTheme.okGreenDot;
    if (pct >= 0.5) return AppTheme.warnAmberDot;
    return AppTheme.alarmRed;
  }

  @override
  Widget build(BuildContext context) {
    final daysUntil =
        exam.scheduledAt.difference(DateTime.now()).inDays.clamp(0, 999);

    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: _isMissed ? AppTheme.alarmRedBg : Colors.white,
          border: Border.all(
            color: _isMissed
                ? AppTheme.alarmRed.withValues(alpha: 0.3)
                : _isUpcoming
                    ? AppTheme.silver.withValues(alpha: 0.4)
                    : _kTileBorder,
            width: 0.5,
          ),
        ),
        child: Stack(
          children: [
            if (_isMissed)
              Positioned(
                top: 0, left: 0, right: 0,
                child: SizedBox(
                    height: 2,
                    child: CustomPaint(painter: _AlarmStripePainter())),
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
              child: Row(
                children: [
                  // Date + exam type
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _shortDate(exam.scheduledAt),
                          style: GoogleFonts.dmSans(
                              fontSize: 9, color: AppTheme.silver),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          exam.examType.toUpperCase(),
                          style: GoogleFonts.dmSans(
                            fontSize: 8, fontWeight: FontWeight.w700,
                            color: AppTheme.steel, letterSpacing: 0.64,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Right-side score / status badge
                  if (_isMissed)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                        color: AppTheme.alarmRed.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                            color: AppTheme.alarmRed.withValues(alpha: 0.4),
                            width: 0.5),
                      ),
                      child: Text(
                        'MISSED',
                        style: GoogleFonts.dmSans(
                          fontSize: 8, fontWeight: FontWeight.w700,
                          color: AppTheme.alarmRed, letterSpacing: 0.64,
                        ),
                      ),
                    )
                  else if (_isUpcoming)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'UPCOMING',
                          style: GoogleFonts.dmSans(
                            fontSize: 8, fontWeight: FontWeight.w700,
                            color: AppTheme.steel, letterSpacing: 0.64,
                          ),
                        ),
                        Text(
                          'in $daysUntil day${daysUntil == 1 ? "" : "s"}',
                          style: GoogleFonts.dmSans(
                              fontSize: 9, color: AppTheme.silver),
                        ),
                      ],
                    )
                  else if (exam.score != null && exam.total != null)
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '${exam.score}',
                            style: GoogleFonts.newsreader(
                              fontSize: 18, fontWeight: FontWeight.w400,
                              color: _scoreColor, height: 1.0,
                            ),
                          ),
                          TextSpan(
                            text: '/${exam.total}',
                            style: GoogleFonts.newsreader(
                              fontSize: 10, color: AppTheme.silver, height: 1.0,
                            ),
                          ),
                        ],
                      ),
                    )
                  else
                    Text(
                      '—',
                      style: GoogleFonts.newsreader(
                          fontSize: 18, color: AppTheme.silver),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// RECENT QUIZZES SECTION
// ─────────────────────────────────────────────────────────────────────────────

class _QuizSection extends StatelessWidget {
  const _QuizSection({required this.dataAsync});

  final AsyncValue<SubjectDeepData> dataAsync;

  @override
  Widget build(BuildContext context) {
    return dataAsync.when(
      loading: () => _Skeleton(height: 60),
      error: (_, __) => _EmptyNote('Unable to load quizzes'),
      data: (data) {
        if (data.quizzes.isEmpty) return _EmptyNote('No quizzes recorded yet');
        return Column(
          children: data.quizzes
              .map<Widget>((q) =>
                  _QuizRow(quiz: q as Map<String, dynamic>))
              .toList(),
        );
      },
    );
  }
}

class _QuizRow extends StatelessWidget {
  const _QuizRow({required this.quiz});

  final Map<String, dynamic> quiz;

  @override
  Widget build(BuildContext context) {
    final score      = quiz['score']   as int?;
    final total      = quiz['total']   as int?;
    final chapter    = (quiz['chapter'] as String?) ?? '—';
    final createdRaw = quiz['created_at'] as String?;
    final created    = createdRaw != null ? DateTime.tryParse(createdRaw) : null;
    final pct        = (score != null && total != null && total > 0)
        ? (score / total * 100).round()
        : null;

    Color fillColor = AppTheme.silver;
    if (pct != null) {
      if (pct >= 70) fillColor = AppTheme.okGreenDot;
      else if (pct >= 50) fillColor = AppTheme.warnAmberDot;
      else fillColor = AppTheme.alarmRed;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Container(
        padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: _kTileBorder, width: 0.5),
        ),
        child: Row(
          children: [
            // Chapter name + date
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chapter,
                    style: GoogleFonts.newsreader(
                      fontSize: 13, fontWeight: FontWeight.w400,
                      color: AppTheme.navy, letterSpacing: -0.13,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (created != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        _shortDate(created),
                        style: GoogleFonts.dmSans(
                            fontSize: 9, color: AppTheme.silver),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            // Score + mini bar
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (score != null && total != null)
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$score',
                          style: GoogleFonts.newsreader(
                            fontSize: 16, fontWeight: FontWeight.w400,
                            color: fillColor, height: 1.0,
                          ),
                        ),
                        TextSpan(
                          text: '/$total',
                          style: GoogleFonts.newsreader(
                            fontSize: 9, color: AppTheme.silver, height: 1.0,
                          ),
                        ),
                      ],
                    ),
                  )
                else
                  Text(
                    '—',
                    style: GoogleFonts.newsreader(
                        fontSize: 16, color: AppTheme.silver),
                  ),
                if (pct != null) ...[
                  const SizedBox(height: 4),
                  SizedBox(
                    width: 48, height: 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(1.5),
                      child: LinearProgressIndicator(
                        value: pct / 100,
                        backgroundColor: const Color(0xFFE5E7EB),
                        valueColor:
                            AlwaysStoppedAnimation<Color>(fillColor),
                        minHeight: 3,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// MAMA ANALYSIS CARD  (mirrors _MamaFooterNote in today_tab.dart)
// ─────────────────────────────────────────────────────────────────────────────

class _MamaAnalysisCard extends StatelessWidget {
  const _MamaAnalysisCard({
    required this.text,
    required this.daysBehind,
  });

  final String text;
  final int    daysBehind;

  Color get _borderColor {
    if (daysBehind >= 3) return AppTheme.alarmRed;
    if (daysBehind >= 1) return AppTheme.warnAmberDot;
    return AppTheme.sand;
  }

  Color get _gradStart {
    if (daysBehind >= 3) return _kAlarmGrad6;
    if (daysBehind >= 1) return const Color(0x0FD97706);
    return const Color(0x0AE3C39D);
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
          Transform.rotate(
            angle: -2.0 * math.pi / 180,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 2.5),
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
              text,
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
// Shared micro-widgets
// ─────────────────────────────────────────────────────────────────────────────

class _Skeleton extends StatelessWidget {
  const _Skeleton({required this.height});

  final double height;

  @override
  Widget build(BuildContext context) => Container(
        height: height,
        decoration: BoxDecoration(
          color: AppTheme.silver.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(12),
        ),
      );
}

class _EmptyNote extends StatelessWidget {
  const _EmptyNote(this.message);

  final String message;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Text(
          message,
          style: GoogleFonts.dmSans(
            fontSize: 11, color: AppTheme.silver,
            fontStyle: FontStyle.italic,
          ),
        ),
      );
}
