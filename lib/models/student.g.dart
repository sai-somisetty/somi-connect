// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      stream: json['stream'] as String?,
      examDate: json['exam_date'] == null
          ? null
          : DateTime.parse(json['exam_date'] as String),
      examLevel: json['exam_level'] as String?,
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'stream': instance.stream,
      'exam_date': instance.examDate?.toIso8601String(),
      'exam_level': instance.examLevel,
    };
