// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nudge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Nudge _$NudgeFromJson(Map<String, dynamic> json) => _Nudge(
  id: json['id'] as String,
  parentId: json['parent_id'] as String,
  studentId: json['student_id'] as String,
  nudgeType: json['nudge_type'] as String,
  title: json['title'] as String,
  body: json['body'] as String,
  priority: json['priority'] as String,
  isRead: json['is_read'] as bool,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$NudgeToJson(_Nudge instance) => <String, dynamic>{
  'id': instance.id,
  'parent_id': instance.parentId,
  'student_id': instance.studentId,
  'nudge_type': instance.nudgeType,
  'title': instance.title,
  'body': instance.body,
  'priority': instance.priority,
  'is_read': instance.isRead,
  'created_at': instance.createdAt?.toIso8601String(),
};
