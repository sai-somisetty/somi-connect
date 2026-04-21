// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_student_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParentStudentLinkImpl _$$ParentStudentLinkImplFromJson(
  Map<String, dynamic> json,
) => _$ParentStudentLinkImpl(
  id: json['id'] as String,
  parentId: json['parent_id'] as String,
  studentId: json['student_id'] as String,
  relationship: json['relationship'] as String,
  verified: json['verified'] as bool,
);

Map<String, dynamic> _$$ParentStudentLinkImplToJson(
  _$ParentStudentLinkImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'parent_id': instance.parentId,
  'student_id': instance.studentId,
  'relationship': instance.relationship,
  'verified': instance.verified,
};
