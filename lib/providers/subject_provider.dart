import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/upcoming_exam.dart';
import 'insights_provider.dart'; // re-uses kDevStudentId

class SubjectDeepData {
  final List<UpcomingExam> exams;
  final List<dynamic> quizzes; // raw JSON maps — typed at render time
  const SubjectDeepData({required this.exams, required this.quizzes});
}

/// Fetches upcoming_exams that include [subjectName] in their subjects array,
/// plus the last 5 quiz_scores whose chapter field contains [subjectName].
final subjectDataProvider =
    FutureProvider.family<SubjectDeepData, String>((ref, subjectName) async {
  final supabase = Supabase.instance.client;
  const studentId = kDevStudentId;

  final examsData = await supabase
      .from('upcoming_exams')
      .select()
      .eq('student_id', studentId)
      .contains('subjects', [subjectName])
      .order('scheduled_at', ascending: false)
      .limit(10);

  final exams = (examsData as List)
      .map((j) => UpcomingExam.fromJson(j as Map<String, dynamic>))
      .toList();

  final quizzesData = await supabase
      .from('quiz_scores')
      .select()
      .eq('student_id', studentId)
      .ilike('chapter', '%$subjectName%')
      .order('created_at', ascending: false)
      .limit(5);

  return SubjectDeepData(
    exams: exams,
    quizzes: quizzesData as List,
  );
});
