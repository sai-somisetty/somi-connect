// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_exam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpcomingExamImpl _$$UpcomingExamImplFromJson(Map<String, dynamic> json) =>
    _$UpcomingExamImpl(
      id: json['id'] as String,
      studentId: json['student_id'] as String,
      examType: json['exam_type'] as String,
      subjects: (json['subjects'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      syllabusNote: json['syllabus_note'] as String?,
      scheduledAt: DateTime.parse(json['scheduled_at'] as String),
      status: json['status'] as String,
      score: (json['score'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      classRank: (json['class_rank'] as num?)?.toInt(),
      classSize: (json['class_size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UpcomingExamImplToJson(_$UpcomingExamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.studentId,
      'exam_type': instance.examType,
      'subjects': instance.subjects,
      'syllabus_note': instance.syllabusNote,
      'scheduled_at': instance.scheduledAt.toIso8601String(),
      'status': instance.status,
      'score': instance.score,
      'total': instance.total,
      'class_rank': instance.classRank,
      'class_size': instance.classSize,
    };
