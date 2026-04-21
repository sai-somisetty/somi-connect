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
