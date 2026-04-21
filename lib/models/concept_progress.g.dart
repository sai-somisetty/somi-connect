// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concept_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConceptProgressImpl _$$ConceptProgressImplFromJson(
  Map<String, dynamic> json,
) => _$ConceptProgressImpl(
  id: json['id'] as String,
  studentId: json['student_id'] as String,
  conceptName: json['concept_name'] as String,
  progressPercent: (json['progress_percent'] as num).toDouble(),
);

Map<String, dynamic> _$$ConceptProgressImplToJson(
  _$ConceptProgressImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'student_id': instance.studentId,
  'concept_name': instance.conceptName,
  'progress_percent': instance.progressPercent,
};
