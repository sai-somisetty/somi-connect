import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam_session.freezed.dart';
part 'exam_session.g.dart';

@freezed
sealed class ExamSession with _$ExamSession {
  const factory ExamSession({
    required String id,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'exam_type') required String examType,
    required String status,
    @JsonKey(name: 'kiosk_locked') required bool kioskLocked,
    @JsonKey(name: 'started_at') DateTime? startedAt,
    @JsonKey(name: 'ended_at') DateTime? endedAt,
    @JsonKey(name: 'total_questions') int? totalQuestions,
    @JsonKey(name: 'answered_count') int? answeredCount,
    @JsonKey(name: 'parent_pin_verified') required bool parentPinVerified,
  }) = _ExamSession;

  factory ExamSession.fromJson(Map<String, dynamic> json) =>
      _$ExamSessionFromJson(json);
}
