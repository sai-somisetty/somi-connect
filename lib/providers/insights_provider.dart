import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/daily_insight.dart';
import '../models/upcoming_exam.dart';

// Hardcoded dev IDs until auth flow is wired to ProviderScope.
const String kDevParentId  = '22222222-2222-2222-2222-222222222222';
const String kDevStudentId = '11111111-1111-1111-1111-111111111111';

/// Fetches today's prioritised insights for a parent from `daily_insights`.
final dailyInsightsProvider =
    FutureProvider.family<List<DailyInsight>, String>((ref, parentId) async {
  final supabase = Supabase.instance.client;
  final today = DateTime.now().toIso8601String().substring(0, 10);

  final response = await supabase
      .from('daily_insights')
      .select()
      .eq('parent_id', parentId)
      .eq('for_date', today)
      .order('priority', ascending: true);

  return (response as List)
      .map((j) => DailyInsight.fromJson(j as Map<String, dynamic>))
      .toList();
});

/// Last 6 exams for a student, newest first, from `upcoming_exams`.
final recentExamsProvider =
    FutureProvider.family<List<UpcomingExam>, String>((ref, studentId) async {
  final supabase = Supabase.instance.client;

  final response = await supabase
      .from('upcoming_exams')
      .select()
      .eq('student_id', studentId)
      .order('scheduled_at', ascending: false)
      .limit(6);

  return (response as List)
      .map((j) => UpcomingExam.fromJson(j as Map<String, dynamic>))
      .toList();
});

/// Aggregated exam stats for the hero card stats row (missed exam insight types).
/// Fetches last 4 attended exams for the student and computes last score,
/// last total, last class rank, class size, and avg % across up to 4 exams.
class ExamStatsBundle {
  const ExamStatsBundle({
    this.lastScore,
    this.lastTotal,
    this.lastClassRank,
    this.classSize,
    this.avgLast4Percent,
  });

  final int? lastScore;
  final int? lastTotal;
  final int? lastClassRank;
  final int? classSize;
  final int? avgLast4Percent;
}

final examStatsForInsightProvider =
    FutureProvider.family<ExamStatsBundle, String>((ref, studentId) async {
  final supabase = Supabase.instance.client;

  final attended = await supabase
      .from('upcoming_exams')
      .select()
      .eq('student_id', studentId)
      .eq('status', 'attended')
      .order('scheduled_at', ascending: false)
      .limit(4);

  final exams = (attended as List)
      .map((j) => UpcomingExam.fromJson(j as Map<String, dynamic>))
      .toList();

  int? lastScore;
  int? lastTotal;
  int? lastClassRank;
  int? classSize;
  int? avgLast4;

  if (exams.isNotEmpty) {
    final first = exams.first;
    lastScore = first.score;
    lastTotal = first.total;
    lastClassRank = first.classRank;
    classSize = first.classSize;

    if (exams.length >= 2) {
      final percents = exams
          .where((e) => e.score != null && e.total != null && e.total! > 0)
          .map((e) => (e.score! / e.total!) * 100)
          .toList();
      if (percents.isNotEmpty) {
        avgLast4 =
            (percents.reduce((a, b) => a + b) / percents.length).round();
      }
    }
  }

  return ExamStatsBundle(
    lastScore: lastScore,
    lastTotal: lastTotal,
    lastClassRank: lastClassRank,
    classSize: classSize,
    avgLast4Percent: avgLast4,
  );
});
