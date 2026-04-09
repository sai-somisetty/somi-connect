// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anomaly.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Anomaly {

 String get id;@JsonKey(name: 'exam_session_id') String get examSessionId;@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'anomaly_type') String get anomalyType; String get severity; String? get details;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of Anomaly
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnomalyCopyWith<Anomaly> get copyWith => _$AnomalyCopyWithImpl<Anomaly>(this as Anomaly, _$identity);

  /// Serializes this Anomaly to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Anomaly&&(identical(other.id, id) || other.id == id)&&(identical(other.examSessionId, examSessionId) || other.examSessionId == examSessionId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.anomalyType, anomalyType) || other.anomalyType == anomalyType)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.details, details) || other.details == details)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,examSessionId,studentId,anomalyType,severity,details,createdAt);

@override
String toString() {
  return 'Anomaly(id: $id, examSessionId: $examSessionId, studentId: $studentId, anomalyType: $anomalyType, severity: $severity, details: $details, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $AnomalyCopyWith<$Res>  {
  factory $AnomalyCopyWith(Anomaly value, $Res Function(Anomaly) _then) = _$AnomalyCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'exam_session_id') String examSessionId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'anomaly_type') String anomalyType, String severity, String? details,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$AnomalyCopyWithImpl<$Res>
    implements $AnomalyCopyWith<$Res> {
  _$AnomalyCopyWithImpl(this._self, this._then);

  final Anomaly _self;
  final $Res Function(Anomaly) _then;

/// Create a copy of Anomaly
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? examSessionId = null,Object? studentId = null,Object? anomalyType = null,Object? severity = null,Object? details = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,examSessionId: null == examSessionId ? _self.examSessionId : examSessionId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,anomalyType: null == anomalyType ? _self.anomalyType : anomalyType // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Anomaly].
extension AnomalyPatterns on Anomaly {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Anomaly value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Anomaly() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Anomaly value)  $default,){
final _that = this;
switch (_that) {
case _Anomaly():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Anomaly value)?  $default,){
final _that = this;
switch (_that) {
case _Anomaly() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'exam_session_id')  String examSessionId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'anomaly_type')  String anomalyType,  String severity,  String? details, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Anomaly() when $default != null:
return $default(_that.id,_that.examSessionId,_that.studentId,_that.anomalyType,_that.severity,_that.details,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'exam_session_id')  String examSessionId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'anomaly_type')  String anomalyType,  String severity,  String? details, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Anomaly():
return $default(_that.id,_that.examSessionId,_that.studentId,_that.anomalyType,_that.severity,_that.details,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'exam_session_id')  String examSessionId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'anomaly_type')  String anomalyType,  String severity,  String? details, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Anomaly() when $default != null:
return $default(_that.id,_that.examSessionId,_that.studentId,_that.anomalyType,_that.severity,_that.details,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Anomaly implements Anomaly {
  const _Anomaly({required this.id, @JsonKey(name: 'exam_session_id') required this.examSessionId, @JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'anomaly_type') required this.anomalyType, required this.severity, this.details, @JsonKey(name: 'created_at') this.createdAt});
  factory _Anomaly.fromJson(Map<String, dynamic> json) => _$AnomalyFromJson(json);

@override final  String id;
@override@JsonKey(name: 'exam_session_id') final  String examSessionId;
@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'anomaly_type') final  String anomalyType;
@override final  String severity;
@override final  String? details;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of Anomaly
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnomalyCopyWith<_Anomaly> get copyWith => __$AnomalyCopyWithImpl<_Anomaly>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnomalyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Anomaly&&(identical(other.id, id) || other.id == id)&&(identical(other.examSessionId, examSessionId) || other.examSessionId == examSessionId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.anomalyType, anomalyType) || other.anomalyType == anomalyType)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.details, details) || other.details == details)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,examSessionId,studentId,anomalyType,severity,details,createdAt);

@override
String toString() {
  return 'Anomaly(id: $id, examSessionId: $examSessionId, studentId: $studentId, anomalyType: $anomalyType, severity: $severity, details: $details, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AnomalyCopyWith<$Res> implements $AnomalyCopyWith<$Res> {
  factory _$AnomalyCopyWith(_Anomaly value, $Res Function(_Anomaly) _then) = __$AnomalyCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'exam_session_id') String examSessionId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'anomaly_type') String anomalyType, String severity, String? details,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$AnomalyCopyWithImpl<$Res>
    implements _$AnomalyCopyWith<$Res> {
  __$AnomalyCopyWithImpl(this._self, this._then);

  final _Anomaly _self;
  final $Res Function(_Anomaly) _then;

/// Create a copy of Anomaly
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? examSessionId = null,Object? studentId = null,Object? anomalyType = null,Object? severity = null,Object? details = freezed,Object? createdAt = freezed,}) {
  return _then(_Anomaly(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,examSessionId: null == examSessionId ? _self.examSessionId : examSessionId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,anomalyType: null == anomalyType ? _self.anomalyType : anomalyType // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
