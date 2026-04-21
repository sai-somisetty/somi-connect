// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_insight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyInsightImpl _$$DailyInsightImplFromJson(Map<String, dynamic> json) =>
    _$DailyInsightImpl(
      id: json['id'] as String,
      parentId: json['parent_id'] as String,
      studentId: json['student_id'] as String,
      forDate: DateTime.parse(json['for_date'] as String),
      insightType: json['insight_type'] as String,
      severity: json['severity'] as String,
      priority: (json['priority'] as num).toInt(),
      relatedExamId: json['related_exam_id'] as String?,
      relatedSubject: json['related_subject'] as String?,
      statusLabel: json['status_label'] as String?,
      headline: json['headline'] as String,
      body: json['body'] as String?,
      actionCta: json['action_cta'] as String?,
      actionDetail: json['action_detail'] as String?,
      daysSinceEvent: (json['days_since_event'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DailyInsightImplToJson(_$DailyInsightImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'student_id': instance.studentId,
      'for_date': instance.forDate.toIso8601String(),
      'insight_type': instance.insightType,
      'severity': instance.severity,
      'priority': instance.priority,
      'related_exam_id': instance.relatedExamId,
      'related_subject': instance.relatedSubject,
      'status_label': instance.statusLabel,
      'headline': instance.headline,
      'body': instance.body,
      'action_cta': instance.actionCta,
      'action_detail': instance.actionDetail,
      'days_since_event': instance.daysSinceEvent,
    };
