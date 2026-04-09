// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HealthRecord {

 String get id;@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'record_type') String get recordType;@JsonKey(name: 'record_date') DateTime? get recordDate;@JsonKey(name: 'height_cm') double? get heightCm;@JsonKey(name: 'weight_kg') double? get weightKg; double? get bmi;@JsonKey(name: 'vitamin_b12') double? get vitaminB12;@JsonKey(name: 'vitamin_d3') double? get vitaminD3;@JsonKey(name: 'iron_level') double? get ironLevel; double? get ferritin; double? get hemoglobin;
/// Create a copy of HealthRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthRecordCopyWith<HealthRecord> get copyWith => _$HealthRecordCopyWithImpl<HealthRecord>(this as HealthRecord, _$identity);

  /// Serializes this HealthRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.recordType, recordType) || other.recordType == recordType)&&(identical(other.recordDate, recordDate) || other.recordDate == recordDate)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.bmi, bmi) || other.bmi == bmi)&&(identical(other.vitaminB12, vitaminB12) || other.vitaminB12 == vitaminB12)&&(identical(other.vitaminD3, vitaminD3) || other.vitaminD3 == vitaminD3)&&(identical(other.ironLevel, ironLevel) || other.ironLevel == ironLevel)&&(identical(other.ferritin, ferritin) || other.ferritin == ferritin)&&(identical(other.hemoglobin, hemoglobin) || other.hemoglobin == hemoglobin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,studentId,recordType,recordDate,heightCm,weightKg,bmi,vitaminB12,vitaminD3,ironLevel,ferritin,hemoglobin);

@override
String toString() {
  return 'HealthRecord(id: $id, studentId: $studentId, recordType: $recordType, recordDate: $recordDate, heightCm: $heightCm, weightKg: $weightKg, bmi: $bmi, vitaminB12: $vitaminB12, vitaminD3: $vitaminD3, ironLevel: $ironLevel, ferritin: $ferritin, hemoglobin: $hemoglobin)';
}


}

/// @nodoc
abstract mixin class $HealthRecordCopyWith<$Res>  {
  factory $HealthRecordCopyWith(HealthRecord value, $Res Function(HealthRecord) _then) = _$HealthRecordCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'record_type') String recordType,@JsonKey(name: 'record_date') DateTime? recordDate,@JsonKey(name: 'height_cm') double? heightCm,@JsonKey(name: 'weight_kg') double? weightKg, double? bmi,@JsonKey(name: 'vitamin_b12') double? vitaminB12,@JsonKey(name: 'vitamin_d3') double? vitaminD3,@JsonKey(name: 'iron_level') double? ironLevel, double? ferritin, double? hemoglobin
});




}
/// @nodoc
class _$HealthRecordCopyWithImpl<$Res>
    implements $HealthRecordCopyWith<$Res> {
  _$HealthRecordCopyWithImpl(this._self, this._then);

  final HealthRecord _self;
  final $Res Function(HealthRecord) _then;

/// Create a copy of HealthRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? studentId = null,Object? recordType = null,Object? recordDate = freezed,Object? heightCm = freezed,Object? weightKg = freezed,Object? bmi = freezed,Object? vitaminB12 = freezed,Object? vitaminD3 = freezed,Object? ironLevel = freezed,Object? ferritin = freezed,Object? hemoglobin = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,recordType: null == recordType ? _self.recordType : recordType // ignore: cast_nullable_to_non_nullable
as String,recordDate: freezed == recordDate ? _self.recordDate : recordDate // ignore: cast_nullable_to_non_nullable
as DateTime?,heightCm: freezed == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as double?,weightKg: freezed == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as double?,bmi: freezed == bmi ? _self.bmi : bmi // ignore: cast_nullable_to_non_nullable
as double?,vitaminB12: freezed == vitaminB12 ? _self.vitaminB12 : vitaminB12 // ignore: cast_nullable_to_non_nullable
as double?,vitaminD3: freezed == vitaminD3 ? _self.vitaminD3 : vitaminD3 // ignore: cast_nullable_to_non_nullable
as double?,ironLevel: freezed == ironLevel ? _self.ironLevel : ironLevel // ignore: cast_nullable_to_non_nullable
as double?,ferritin: freezed == ferritin ? _self.ferritin : ferritin // ignore: cast_nullable_to_non_nullable
as double?,hemoglobin: freezed == hemoglobin ? _self.hemoglobin : hemoglobin // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthRecord].
extension HealthRecordPatterns on HealthRecord {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthRecord() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthRecord value)  $default,){
final _that = this;
switch (_that) {
case _HealthRecord():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthRecord value)?  $default,){
final _that = this;
switch (_that) {
case _HealthRecord() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'record_type')  String recordType, @JsonKey(name: 'record_date')  DateTime? recordDate, @JsonKey(name: 'height_cm')  double? heightCm, @JsonKey(name: 'weight_kg')  double? weightKg,  double? bmi, @JsonKey(name: 'vitamin_b12')  double? vitaminB12, @JsonKey(name: 'vitamin_d3')  double? vitaminD3, @JsonKey(name: 'iron_level')  double? ironLevel,  double? ferritin,  double? hemoglobin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthRecord() when $default != null:
return $default(_that.id,_that.studentId,_that.recordType,_that.recordDate,_that.heightCm,_that.weightKg,_that.bmi,_that.vitaminB12,_that.vitaminD3,_that.ironLevel,_that.ferritin,_that.hemoglobin);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'record_type')  String recordType, @JsonKey(name: 'record_date')  DateTime? recordDate, @JsonKey(name: 'height_cm')  double? heightCm, @JsonKey(name: 'weight_kg')  double? weightKg,  double? bmi, @JsonKey(name: 'vitamin_b12')  double? vitaminB12, @JsonKey(name: 'vitamin_d3')  double? vitaminD3, @JsonKey(name: 'iron_level')  double? ironLevel,  double? ferritin,  double? hemoglobin)  $default,) {final _that = this;
switch (_that) {
case _HealthRecord():
return $default(_that.id,_that.studentId,_that.recordType,_that.recordDate,_that.heightCm,_that.weightKg,_that.bmi,_that.vitaminB12,_that.vitaminD3,_that.ironLevel,_that.ferritin,_that.hemoglobin);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'record_type')  String recordType, @JsonKey(name: 'record_date')  DateTime? recordDate, @JsonKey(name: 'height_cm')  double? heightCm, @JsonKey(name: 'weight_kg')  double? weightKg,  double? bmi, @JsonKey(name: 'vitamin_b12')  double? vitaminB12, @JsonKey(name: 'vitamin_d3')  double? vitaminD3, @JsonKey(name: 'iron_level')  double? ironLevel,  double? ferritin,  double? hemoglobin)?  $default,) {final _that = this;
switch (_that) {
case _HealthRecord() when $default != null:
return $default(_that.id,_that.studentId,_that.recordType,_that.recordDate,_that.heightCm,_that.weightKg,_that.bmi,_that.vitaminB12,_that.vitaminD3,_that.ironLevel,_that.ferritin,_that.hemoglobin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthRecord implements HealthRecord {
  const _HealthRecord({required this.id, @JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'record_type') required this.recordType, @JsonKey(name: 'record_date') this.recordDate, @JsonKey(name: 'height_cm') this.heightCm, @JsonKey(name: 'weight_kg') this.weightKg, this.bmi, @JsonKey(name: 'vitamin_b12') this.vitaminB12, @JsonKey(name: 'vitamin_d3') this.vitaminD3, @JsonKey(name: 'iron_level') this.ironLevel, this.ferritin, this.hemoglobin});
  factory _HealthRecord.fromJson(Map<String, dynamic> json) => _$HealthRecordFromJson(json);

@override final  String id;
@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'record_type') final  String recordType;
@override@JsonKey(name: 'record_date') final  DateTime? recordDate;
@override@JsonKey(name: 'height_cm') final  double? heightCm;
@override@JsonKey(name: 'weight_kg') final  double? weightKg;
@override final  double? bmi;
@override@JsonKey(name: 'vitamin_b12') final  double? vitaminB12;
@override@JsonKey(name: 'vitamin_d3') final  double? vitaminD3;
@override@JsonKey(name: 'iron_level') final  double? ironLevel;
@override final  double? ferritin;
@override final  double? hemoglobin;

/// Create a copy of HealthRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthRecordCopyWith<_HealthRecord> get copyWith => __$HealthRecordCopyWithImpl<_HealthRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthRecordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.recordType, recordType) || other.recordType == recordType)&&(identical(other.recordDate, recordDate) || other.recordDate == recordDate)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.bmi, bmi) || other.bmi == bmi)&&(identical(other.vitaminB12, vitaminB12) || other.vitaminB12 == vitaminB12)&&(identical(other.vitaminD3, vitaminD3) || other.vitaminD3 == vitaminD3)&&(identical(other.ironLevel, ironLevel) || other.ironLevel == ironLevel)&&(identical(other.ferritin, ferritin) || other.ferritin == ferritin)&&(identical(other.hemoglobin, hemoglobin) || other.hemoglobin == hemoglobin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,studentId,recordType,recordDate,heightCm,weightKg,bmi,vitaminB12,vitaminD3,ironLevel,ferritin,hemoglobin);

@override
String toString() {
  return 'HealthRecord(id: $id, studentId: $studentId, recordType: $recordType, recordDate: $recordDate, heightCm: $heightCm, weightKg: $weightKg, bmi: $bmi, vitaminB12: $vitaminB12, vitaminD3: $vitaminD3, ironLevel: $ironLevel, ferritin: $ferritin, hemoglobin: $hemoglobin)';
}


}

/// @nodoc
abstract mixin class _$HealthRecordCopyWith<$Res> implements $HealthRecordCopyWith<$Res> {
  factory _$HealthRecordCopyWith(_HealthRecord value, $Res Function(_HealthRecord) _then) = __$HealthRecordCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'record_type') String recordType,@JsonKey(name: 'record_date') DateTime? recordDate,@JsonKey(name: 'height_cm') double? heightCm,@JsonKey(name: 'weight_kg') double? weightKg, double? bmi,@JsonKey(name: 'vitamin_b12') double? vitaminB12,@JsonKey(name: 'vitamin_d3') double? vitaminD3,@JsonKey(name: 'iron_level') double? ironLevel, double? ferritin, double? hemoglobin
});




}
/// @nodoc
class __$HealthRecordCopyWithImpl<$Res>
    implements _$HealthRecordCopyWith<$Res> {
  __$HealthRecordCopyWithImpl(this._self, this._then);

  final _HealthRecord _self;
  final $Res Function(_HealthRecord) _then;

/// Create a copy of HealthRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? studentId = null,Object? recordType = null,Object? recordDate = freezed,Object? heightCm = freezed,Object? weightKg = freezed,Object? bmi = freezed,Object? vitaminB12 = freezed,Object? vitaminD3 = freezed,Object? ironLevel = freezed,Object? ferritin = freezed,Object? hemoglobin = freezed,}) {
  return _then(_HealthRecord(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,recordType: null == recordType ? _self.recordType : recordType // ignore: cast_nullable_to_non_nullable
as String,recordDate: freezed == recordDate ? _self.recordDate : recordDate // ignore: cast_nullable_to_non_nullable
as DateTime?,heightCm: freezed == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as double?,weightKg: freezed == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as double?,bmi: freezed == bmi ? _self.bmi : bmi // ignore: cast_nullable_to_non_nullable
as double?,vitaminB12: freezed == vitaminB12 ? _self.vitaminB12 : vitaminB12 // ignore: cast_nullable_to_non_nullable
as double?,vitaminD3: freezed == vitaminD3 ? _self.vitaminD3 : vitaminD3 // ignore: cast_nullable_to_non_nullable
as double?,ironLevel: freezed == ironLevel ? _self.ironLevel : ironLevel // ignore: cast_nullable_to_non_nullable
as double?,ferritin: freezed == ferritin ? _self.ferritin : ferritin // ignore: cast_nullable_to_non_nullable
as double?,hemoglobin: freezed == hemoglobin ? _self.hemoglobin : hemoglobin // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
