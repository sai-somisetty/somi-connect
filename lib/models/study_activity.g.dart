// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudyActivity _$StudyActivityFromJson(Map<String, dynamic> json) =>
    _StudyActivity(
      id: json['id'] as String,
      studentId: json['student_id'] as String,
      activityDate: DateTime.parse(json['activity_date'] as String),
      activityType: json['activity_type'] as String,
      durationMinutes: (json['duration_minutes'] as num?)?.toInt(),
      chapterId: json['chapter_id'] as String?,
      conceptId: json['concept_id'] as String?,
    );

Map<String, dynamic> _$StudyActivityToJson(_StudyActivity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.studentId,
      'activity_date': instance.activityDate.toIso8601String(),
      'activity_type': instance.activityType,
      'duration_minutes': instance.durationMinutes,
      'chapter_id': instance.chapterId,
      'concept_id': instance.conceptId,
    };
