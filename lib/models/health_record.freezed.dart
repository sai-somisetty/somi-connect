// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HealthRecord _$HealthRecordFromJson(Map<String, dynamic> json) {
  return _HealthRecord.fromJson(json);
}

/// @nodoc
mixin _$HealthRecord {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  String get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'record_type')
  String get recordType => throw _privateConstructorUsedError;
  @JsonKey(name: 'record_date')
  DateTime? get recordDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'height_cm')
  double? get heightCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight_kg')
  double? get weightKg => throw _privateConstructorUsedError;
  double? get bmi => throw _privateConstructorUsedError;
  @JsonKey(name: 'vitamin_b12')
  double? get vitaminB12 => throw _privateConstructorUsedError;
  @JsonKey(name: 'vitamin_d3')
  double? get vitaminD3 => throw _privateConstructorUsedError;
  @JsonKey(name: 'iron_level')
  double? get ironLevel => throw _privateConstructorUsedError;
  double? get ferritin => throw _privateConstructorUsedError;
  double? get hemoglobin => throw _privateConstructorUsedError;

  /// Serializes this HealthRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HealthRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthRecordCopyWith<HealthRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthRecordCopyWith<$Res> {
  factory $HealthRecordCopyWith(
    HealthRecord value,
    $Res Function(HealthRecord) then,
  ) = _$HealthRecordCopyWithImpl<$Res, HealthRecord>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'student_id') String studentId,
    @JsonKey(name: 'record_type') String recordType,
    @JsonKey(name: 'record_date') DateTime? recordDate,
    @JsonKey(name: 'height_cm') double? heightCm,
    @JsonKey(name: 'weight_kg') double? weightKg,
    double? bmi,
    @JsonKey(name: 'vitamin_b12') double? vitaminB12,
    @JsonKey(name: 'vitamin_d3') double? vitaminD3,
    @JsonKey(name: 'iron_level') double? ironLevel,
    double? ferritin,
    double? hemoglobin,
  });
}

/// @nodoc
class _$HealthRecordCopyWithImpl<$Res, $Val extends HealthRecord>
    implements $HealthRecordCopyWith<$Res> {
  _$HealthRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? recordType = null,
    Object? recordDate = freezed,
    Object? heightCm = freezed,
    Object? weightKg = freezed,
    Object? bmi = freezed,
    Object? vitaminB12 = freezed,
    Object? vitaminD3 = freezed,
    Object? ironLevel = freezed,
    Object? ferritin = freezed,
    Object? hemoglobin = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as String,
            recordType: null == recordType
                ? _value.recordType
                : recordType // ignore: cast_nullable_to_non_nullable
                      as String,
            recordDate: freezed == recordDate
                ? _value.recordDate
                : recordDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            heightCm: freezed == heightCm
                ? _value.heightCm
                : heightCm // ignore: cast_nullable_to_non_nullable
                      as double?,
            weightKg: freezed == weightKg
                ? _value.weightKg
                : weightKg // ignore: cast_nullable_to_non_nullable
                      as double?,
            bmi: freezed == bmi
                ? _value.bmi
                : bmi // ignore: cast_nullable_to_non_nullable
                      as double?,
            vitaminB12: freezed == vitaminB12
                ? _value.vitaminB12
                : vitaminB12 // ignore: cast_nullable_to_non_nullable
                      as double?,
            vitaminD3: freezed == vitaminD3
                ? _value.vitaminD3
                : vitaminD3 // ignore: cast_nullable_to_non_nullable
                      as double?,
            ironLevel: freezed == ironLevel
                ? _value.ironLevel
                : ironLevel // ignore: cast_nullable_to_non_nullable
                      as double?,
            ferritin: freezed == ferritin
                ? _value.ferritin
                : ferritin // ignore: cast_nullable_to_non_nullable
                      as double?,
            hemoglobin: freezed == hemoglobin
                ? _value.hemoglobin
                : hemoglobin // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HealthRecordImplCopyWith<$Res>
    implements $HealthRecordCopyWith<$Res> {
  factory _$$HealthRecordImplCopyWith(
    _$HealthRecordImpl value,
    $Res Function(_$HealthRecordImpl) then,
  ) = __$$HealthRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'student_id') String studentId,
    @JsonKey(name: 'record_type') String recordType,
    @JsonKey(name: 'record_date') DateTime? recordDate,
    @JsonKey(name: 'height_cm') double? heightCm,
    @JsonKey(name: 'weight_kg') double? weightKg,
    double? bmi,
    @JsonKey(name: 'vitamin_b12') double? vitaminB12,
    @JsonKey(name: 'vitamin_d3') double? vitaminD3,
    @JsonKey(name: 'iron_level') double? ironLevel,
    double? ferritin,
    double? hemoglobin,
  });
}

/// @nodoc
class __$$HealthRecordImplCopyWithImpl<$Res>
    extends _$HealthRecordCopyWithImpl<$Res, _$HealthRecordImpl>
    implements _$$HealthRecordImplCopyWith<$Res> {
  __$$HealthRecordImplCopyWithImpl(
    _$HealthRecordImpl _value,
    $Res Function(_$HealthRecordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HealthRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? recordType = null,
    Object? recordDate = freezed,
    Object? heightCm = freezed,
    Object? weightKg = freezed,
    Object? bmi = freezed,
    Object? vitaminB12 = freezed,
    Object? vitaminD3 = freezed,
    Object? ironLevel = freezed,
    Object? ferritin = freezed,
    Object? hemoglobin = freezed,
  }) {
    return _then(
      _$HealthRecordImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String,
        recordType: null == recordType
            ? _value.recordType
            : recordType // ignore: cast_nullable_to_non_nullable
                  as String,
        recordDate: freezed == recordDate
            ? _value.recordDate
            : recordDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        heightCm: freezed == heightCm
            ? _value.heightCm
            : heightCm // ignore: cast_nullable_to_non_nullable
                  as double?,
        weightKg: freezed == weightKg
            ? _value.weightKg
            : weightKg // ignore: cast_nullable_to_non_nullable
                  as double?,
        bmi: freezed == bmi
            ? _value.bmi
            : bmi // ignore: cast_nullable_to_non_nullable
                  as double?,
        vitaminB12: freezed == vitaminB12
            ? _value.vitaminB12
            : vitaminB12 // ignore: cast_nullable_to_non_nullable
                  as double?,
        vitaminD3: freezed == vitaminD3
            ? _value.vitaminD3
            : vitaminD3 // ignore: cast_nullable_to_non_nullable
                  as double?,
        ironLevel: freezed == ironLevel
            ? _value.ironLevel
            : ironLevel // ignore: cast_nullable_to_non_nullable
                  as double?,
        ferritin: freezed == ferritin
            ? _value.ferritin
            : ferritin // ignore: cast_nullable_to_non_nullable
                  as double?,
        hemoglobin: freezed == hemoglobin
            ? _value.hemoglobin
            : hemoglobin // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthRecordImpl implements _HealthRecord {
  const _$HealthRecordImpl({
    required this.id,
    @JsonKey(name: 'student_id') required this.studentId,
    @JsonKey(name: 'record_type') required this.recordType,
    @JsonKey(name: 'record_date') this.recordDate,
    @JsonKey(name: 'height_cm') this.heightCm,
    @JsonKey(name: 'weight_kg') this.weightKg,
    this.bmi,
    @JsonKey(name: 'vitamin_b12') this.vitaminB12,
    @JsonKey(name: 'vitamin_d3') this.vitaminD3,
    @JsonKey(name: 'iron_level') this.ironLevel,
    this.ferritin,
    this.hemoglobin,
  });

  factory _$HealthRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthRecordImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'student_id')
  final String studentId;
  @override
  @JsonKey(name: 'record_type')
  final String recordType;
  @override
  @JsonKey(name: 'record_date')
  final DateTime? recordDate;
  @override
  @JsonKey(name: 'height_cm')
  final double? heightCm;
  @override
  @JsonKey(name: 'weight_kg')
  final double? weightKg;
  @override
  final double? bmi;
  @override
  @JsonKey(name: 'vitamin_b12')
  final double? vitaminB12;
  @override
  @JsonKey(name: 'vitamin_d3')
  final double? vitaminD3;
  @override
  @JsonKey(name: 'iron_level')
  final double? ironLevel;
  @override
  final double? ferritin;
  @override
  final double? hemoglobin;

  @override
  String toString() {
    return 'HealthRecord(id: $id, studentId: $studentId, recordType: $recordType, recordDate: $recordDate, heightCm: $heightCm, weightKg: $weightKg, bmi: $bmi, vitaminB12: $vitaminB12, vitaminD3: $vitaminD3, ironLevel: $ironLevel, ferritin: $ferritin, hemoglobin: $hemoglobin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.recordType, recordType) ||
                other.recordType == recordType) &&
            (identical(other.recordDate, recordDate) ||
                other.recordDate == recordDate) &&
            (identical(other.heightCm, heightCm) ||
                other.heightCm == heightCm) &&
            (identical(other.weightKg, weightKg) ||
                other.weightKg == weightKg) &&
            (identical(other.bmi, bmi) || other.bmi == bmi) &&
            (identical(other.vitaminB12, vitaminB12) ||
                other.vitaminB12 == vitaminB12) &&
            (identical(other.vitaminD3, vitaminD3) ||
                other.vitaminD3 == vitaminD3) &&
            (identical(other.ironLevel, ironLevel) ||
                other.ironLevel == ironLevel) &&
            (identical(other.ferritin, ferritin) ||
                other.ferritin == ferritin) &&
            (identical(other.hemoglobin, hemoglobin) ||
                other.hemoglobin == hemoglobin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    studentId,
    recordType,
    recordDate,
    heightCm,
    weightKg,
    bmi,
    vitaminB12,
    vitaminD3,
    ironLevel,
    ferritin,
    hemoglobin,
  );

  /// Create a copy of HealthRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthRecordImplCopyWith<_$HealthRecordImpl> get copyWith =>
      __$$HealthRecordImplCopyWithImpl<_$HealthRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthRecordImplToJson(this);
  }
}

abstract class _HealthRecord implements HealthRecord {
  const factory _HealthRecord({
    required final String id,
    @JsonKey(name: 'student_id') required final String studentId,
    @JsonKey(name: 'record_type') required final String recordType,
    @JsonKey(name: 'record_date') final DateTime? recordDate,
    @JsonKey(name: 'height_cm') final double? heightCm,
    @JsonKey(name: 'weight_kg') final double? weightKg,
    final double? bmi,
    @JsonKey(name: 'vitamin_b12') final double? vitaminB12,
    @JsonKey(name: 'vitamin_d3') final double? vitaminD3,
    @JsonKey(name: 'iron_level') final double? ironLevel,
    final double? ferritin,
    final double? hemoglobin,
  }) = _$HealthRecordImpl;

  factory _HealthRecord.fromJson(Map<String, dynamic> json) =
      _$HealthRecordImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'student_id')
  String get studentId;
  @override
  @JsonKey(name: 'record_type')
  String get recordType;
  @override
  @JsonKey(name: 'record_date')
  DateTime? get recordDate;
  @override
  @JsonKey(name: 'height_cm')
  double? get heightCm;
  @override
  @JsonKey(name: 'weight_kg')
  double? get weightKg;
  @override
  double? get bmi;
  @override
  @JsonKey(name: 'vitamin_b12')
  double? get vitaminB12;
  @override
  @JsonKey(name: 'vitamin_d3')
  double? get vitaminD3;
  @override
  @JsonKey(name: 'iron_level')
  double? get ironLevel;
  @override
  double? get ferritin;
  @override
  double? get hemoglobin;

  /// Create a copy of HealthRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthRecordImplCopyWith<_$HealthRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
