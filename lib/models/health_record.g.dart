// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HealthRecord _$HealthRecordFromJson(Map<String, dynamic> json) =>
    _HealthRecord(
      id: json['id'] as String,
      studentId: json['student_id'] as String,
      recordType: json['record_type'] as String,
      recordDate: json['record_date'] == null
          ? null
          : DateTime.parse(json['record_date'] as String),
      heightCm: (json['height_cm'] as num?)?.toDouble(),
      weightKg: (json['weight_kg'] as num?)?.toDouble(),
      bmi: (json['bmi'] as num?)?.toDouble(),
      vitaminB12: (json['vitamin_b12'] as num?)?.toDouble(),
      vitaminD3: (json['vitamin_d3'] as num?)?.toDouble(),
      ironLevel: (json['iron_level'] as num?)?.toDouble(),
      ferritin: (json['ferritin'] as num?)?.toDouble(),
      hemoglobin: (json['hemoglobin'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$HealthRecordToJson(_HealthRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.studentId,
      'record_type': instance.recordType,
      'record_date': instance.recordDate?.toIso8601String(),
      'height_cm': instance.heightCm,
      'weight_kg': instance.weightKg,
      'bmi': instance.bmi,
      'vitamin_b12': instance.vitaminB12,
      'vitamin_d3': instance.vitaminD3,
      'iron_level': instance.ironLevel,
      'ferritin': instance.ferritin,
      'hemoglobin': instance.hemoglobin,
    };
