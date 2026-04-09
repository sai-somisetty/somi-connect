// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExamSession _$ExamSessionFromJson(Map<String, dynamic> json) => _ExamSession(
  id: json['id'] as String,
  studentId: json['student_id'] as String,
  examType: json['exam_type'] as String,
  status: json['status'] as String,
  kioskLocked: json['kiosk_locked'] as bool,
  startedAt: json['started_at'] == null
      ? null
      : DateTime.parse(json['started_at'] as String),
  endedAt: json['ended_at'] == null
      ? null
      : DateTime.parse(json['ended_at'] as String),
  totalQuestions: (json['total_questions'] as num?)?.toInt(),
  answeredCount: (json['answered_count'] as num?)?.toInt(),
  parentPinVerified: json['parent_pin_verified'] as bool,
);

Map<String, dynamic> _$ExamSessionToJson(_ExamSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.studentId,
      'exam_type': instance.examType,
      'status': instance.status,
      'kiosk_locked': instance.kioskLocked,
      'started_at': instance.startedAt?.toIso8601String(),
      'ended_at': instance.endedAt?.toIso8601String(),
      'total_questions': instance.totalQuestions,
      'answered_count': instance.answeredCount,
      'parent_pin_verified': instance.parentPinVerified,
    };
