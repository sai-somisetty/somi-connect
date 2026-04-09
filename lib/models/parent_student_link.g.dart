// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_student_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParentStudentLink _$ParentStudentLinkFromJson(Map<String, dynamic> json) =>
    _ParentStudentLink(
      id: json['id'] as String,
      parentId: json['parent_id'] as String,
      studentId: json['student_id'] as String,
      relationship: json['relationship'] as String,
      verified: json['verified'] as bool,
    );

Map<String, dynamic> _$ParentStudentLinkToJson(_ParentStudentLink instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'student_id': instance.studentId,
      'relationship': instance.relationship,
      'verified': instance.verified,
    };
