import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_record.freezed.dart';
part 'health_record.g.dart';

@freezed
sealed class HealthRecord with _$HealthRecord {
  const factory HealthRecord({
    required String id,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'record_type') required String recordType,
    @JsonKey(name: 'record_date') DateTime? recordDate,
    @JsonKey(name: 'height_cm') double? heightCm,
    @JsonKey(name: 'weight_kg') double? weightKg,
    double? bmi,
    @JsonKey(name: 'vitamin_b12') double? vitaminB12,
    @JsonKey(name: 'vitamin_d3') double? vitaminD3,
    @JsonKey(name: 'iron_level') double? ironLevel,
    double? ferritin,
    double? hemoglobin,
  }) = _HealthRecord;

  factory HealthRecord.fromJson(Map<String, dynamic> json) =>
      _$HealthRecordFromJson(json);
}
