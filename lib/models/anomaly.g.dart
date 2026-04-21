// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anomaly.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnomalyImpl _$$AnomalyImplFromJson(Map<String, dynamic> json) =>
    _$AnomalyImpl(
      id: json['id'] as String,
      examSessionId: json['exam_session_id'] as String,
      studentId: json['student_id'] as String,
      anomalyType: json['anomaly_type'] as String,
      severity: json['severity'] as String,
      details: json['details'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$AnomalyImplToJson(_$AnomalyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'exam_session_id': instance.examSessionId,
      'student_id': instance.studentId,
      'anomaly_type': instance.anomalyType,
      'severity': instance.severity,
      'details': instance.details,
      'created_at': instance.createdAt?.toIso8601String(),
    };
