import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_activity.freezed.dart';
part 'study_activity.g.dart';

@freezed
sealed class StudyActivity with _$StudyActivity {
  const factory StudyActivity({
    required String id,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'activity_date') required DateTime activityDate,
    @JsonKey(name: 'activity_type') required String activityType,
    @JsonKey(name: 'duration_minutes') int? durationMinutes,
    @JsonKey(name: 'chapter_id') String? chapterId,
    @JsonKey(name: 'concept_id') String? conceptId,
  }) = _StudyActivity;

  factory StudyActivity.fromJson(Map<String, dynamic> json) =>
      _$StudyActivityFromJson(json);
}
