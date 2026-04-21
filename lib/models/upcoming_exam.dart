import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_exam.freezed.dart';
part 'upcoming_exam.g.dart';

@freezed
class UpcomingExam with _$UpcomingExam {
  const factory UpcomingExam({
    required String id,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'exam_type') required String examType,
    required List<String> subjects,
    @JsonKey(name: 'syllabus_note') String? syllabusNote,
    @JsonKey(name: 'scheduled_at') required DateTime scheduledAt,
    required String status,
    int? score,
    int? total,
    @JsonKey(name: 'class_rank') int? classRank,
    @JsonKey(name: 'class_size') int? classSize,
  }) = _UpcomingExam;

  factory UpcomingExam.fromJson(Map<String, dynamic> json) =>
      _$UpcomingExamFromJson(json);
}
