// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizScoreImpl _$$QuizScoreImplFromJson(Map<String, dynamic> json) =>
    _$QuizScoreImpl(
      id: json['id'] as String,
      studentId: json['student_id'] as String,
      score: (json['score'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      chapter: json['chapter'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$QuizScoreImplToJson(_$QuizScoreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.studentId,
      'score': instance.score,
      'total': instance.total,
      'chapter': instance.chapter,
      'created_at': instance.createdAt?.toIso8601String(),
    };
