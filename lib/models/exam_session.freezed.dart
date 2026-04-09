// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExamSession {

 String get id;@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'exam_type') String get examType; String get status;@JsonKey(name: 'kiosk_locked') bool get kioskLocked;@JsonKey(name: 'started_at') DateTime? get startedAt;@JsonKey(name: 'ended_at') DateTime? get endedAt;@JsonKey(name: 'total_questions') int? get totalQuestions;@JsonKey(name: 'answered_count') int? get answeredCount;@JsonKey(name: 'parent_pin_verified') bool get parentPinVerified;
/// Create a copy of ExamSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamSessionCopyWith<ExamSession> get copyWith => _$ExamSessionCopyWithImpl<ExamSession>(this as ExamSession, _$identity);

  /// Serializes this ExamSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamSession&&(identical(other.id, id) || other.id == id)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.examType, examType) || other.examType == examType)&&(identical(other.status, status) || other.status == status)&&(identical(other.kioskLocked, kioskLocked) || other.kioskLocked == kioskLocked)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt)&&(identical(other.totalQuestions, totalQuestions) || other.totalQuestions == totalQuestions)&&(identical(other.answeredCount, answeredCount) || other.answeredCount == answeredCount)&&(identical(other.parentPinVerified, parentPinVerified) || other.parentPinVerified == parentPinVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,studentId,examType,status,kioskLocked,startedAt,endedAt,totalQuestions,answeredCount,parentPinVerified);

@override
String toString() {
  return 'ExamSession(id: $id, studentId: $studentId, examType: $examType, status: $status, kioskLocked: $kioskLocked, startedAt: $startedAt, endedAt: $endedAt, totalQuestions: $totalQuestions, answeredCount: $answeredCount, parentPinVerified: $parentPinVerified)';
}


}

/// @nodoc
abstract mixin class $ExamSessionCopyWith<$Res>  {
  factory $ExamSessionCopyWith(ExamSession value, $Res Function(ExamSession) _then) = _$ExamSessionCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'exam_type') String examType, String status,@JsonKey(name: 'kiosk_locked') bool kioskLocked,@JsonKey(name: 'started_at') DateTime? startedAt,@JsonKey(name: 'ended_at') DateTime? endedAt,@JsonKey(name: 'total_questions') int? totalQuestions,@JsonKey(name: 'answered_count') int? answeredCount,@JsonKey(name: 'parent_pin_verified') bool parentPinVerified
});




}
/// @nodoc
class _$ExamSessionCopyWithImpl<$Res>
    implements $ExamSessionCopyWith<$Res> {
  _$ExamSessionCopyWithImpl(this._self, this._then);

  final ExamSession _self;
  final $Res Function(ExamSession) _then;

/// Create a copy of ExamSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? studentId = null,Object? examType = null,Object? status = null,Object? kioskLocked = null,Object? startedAt = freezed,Object? endedAt = freezed,Object? totalQuestions = freezed,Object? answeredCount = freezed,Object? parentPinVerified = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,examType: null == examType ? _self.examType : examType // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,kioskLocked: null == kioskLocked ? _self.kioskLocked : kioskLocked // ignore: cast_nullable_to_non_nullable
as bool,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endedAt: freezed == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,totalQuestions: freezed == totalQuestions ? _self.totalQuestions : totalQuestions // ignore: cast_nullable_to_non_nullable
as int?,answeredCount: freezed == answeredCount ? _self.answeredCount : answeredCount // ignore: cast_nullable_to_non_nullable
as int?,parentPinVerified: null == parentPinVerified ? _self.parentPinVerified : parentPinVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamSession].
extension ExamSessionPatterns on ExamSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamSession value)  $default,){
final _that = this;
switch (_that) {
case _ExamSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamSession value)?  $default,){
final _that = this;
switch (_that) {
case _ExamSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'exam_type')  String examType,  String status, @JsonKey(name: 'kiosk_locked')  bool kioskLocked, @JsonKey(name: 'started_at')  DateTime? startedAt, @JsonKey(name: 'ended_at')  DateTime? endedAt, @JsonKey(name: 'total_questions')  int? totalQuestions, @JsonKey(name: 'answered_count')  int? answeredCount, @JsonKey(name: 'parent_pin_verified')  bool parentPinVerified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamSession() when $default != null:
return $default(_that.id,_that.studentId,_that.examType,_that.status,_that.kioskLocked,_that.startedAt,_that.endedAt,_that.totalQuestions,_that.answeredCount,_that.parentPinVerified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'exam_type')  String examType,  String status, @JsonKey(name: 'kiosk_locked')  bool kioskLocked, @JsonKey(name: 'started_at')  DateTime? startedAt, @JsonKey(name: 'ended_at')  DateTime? endedAt, @JsonKey(name: 'total_questions')  int? totalQuestions, @JsonKey(name: 'answered_count')  int? answeredCount, @JsonKey(name: 'parent_pin_verified')  bool parentPinVerified)  $default,) {final _that = this;
switch (_that) {
case _ExamSession():
return $default(_that.id,_that.studentId,_that.examType,_that.status,_that.kioskLocked,_that.startedAt,_that.endedAt,_that.totalQuestions,_that.answeredCount,_that.parentPinVerified);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'exam_type')  String examType,  String status, @JsonKey(name: 'kiosk_locked')  bool kioskLocked, @JsonKey(name: 'started_at')  DateTime? startedAt, @JsonKey(name: 'ended_at')  DateTime? endedAt, @JsonKey(name: 'total_questions')  int? totalQuestions, @JsonKey(name: 'answered_count')  int? answeredCount, @JsonKey(name: 'parent_pin_verified')  bool parentPinVerified)?  $default,) {final _that = this;
switch (_that) {
case _ExamSession() when $default != null:
return $default(_that.id,_that.studentId,_that.examType,_that.status,_that.kioskLocked,_that.startedAt,_that.endedAt,_that.totalQuestions,_that.answeredCount,_that.parentPinVerified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamSession implements ExamSession {
  const _ExamSession({required this.id, @JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'exam_type') required this.examType, required this.status, @JsonKey(name: 'kiosk_locked') required this.kioskLocked, @JsonKey(name: 'started_at') this.startedAt, @JsonKey(name: 'ended_at') this.endedAt, @JsonKey(name: 'total_questions') this.totalQuestions, @JsonKey(name: 'answered_count') this.answeredCount, @JsonKey(name: 'parent_pin_verified') required this.parentPinVerified});
  factory _ExamSession.fromJson(Map<String, dynamic> json) => _$ExamSessionFromJson(json);

@override final  String id;
@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'exam_type') final  String examType;
@override final  String status;
@override@JsonKey(name: 'kiosk_locked') final  bool kioskLocked;
@override@JsonKey(name: 'started_at') final  DateTime? startedAt;
@override@JsonKey(name: 'ended_at') final  DateTime? endedAt;
@override@JsonKey(name: 'total_questions') final  int? totalQuestions;
@override@JsonKey(name: 'answered_count') final  int? answeredCount;
@override@JsonKey(name: 'parent_pin_verified') final  bool parentPinVerified;

/// Create a copy of ExamSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamSessionCopyWith<_ExamSession> get copyWith => __$ExamSessionCopyWithImpl<_ExamSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamSessionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamSession&&(identical(other.id, id) || other.id == id)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.examType, examType) || other.examType == examType)&&(identical(other.status, status) || other.status == status)&&(identical(other.kioskLocked, kioskLocked) || other.kioskLocked == kioskLocked)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt)&&(identical(other.totalQuestions, totalQuestions) || other.totalQuestions == totalQuestions)&&(identical(other.answeredCount, answeredCount) || other.answeredCount == answeredCount)&&(identical(other.parentPinVerified, parentPinVerified) || other.parentPinVerified == parentPinVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,studentId,examType,status,kioskLocked,startedAt,endedAt,totalQuestions,answeredCount,parentPinVerified);

@override
String toString() {
  return 'ExamSession(id: $id, studentId: $studentId, examType: $examType, status: $status, kioskLocked: $kioskLocked, startedAt: $startedAt, endedAt: $endedAt, totalQuestions: $totalQuestions, answeredCount: $answeredCount, parentPinVerified: $parentPinVerified)';
}


}

/// @nodoc
abstract mixin class _$ExamSessionCopyWith<$Res> implements $ExamSessionCopyWith<$Res> {
  factory _$ExamSessionCopyWith(_ExamSession value, $Res Function(_ExamSession) _then) = __$ExamSessionCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'exam_type') String examType, String status,@JsonKey(name: 'kiosk_locked') bool kioskLocked,@JsonKey(name: 'started_at') DateTime? startedAt,@JsonKey(name: 'ended_at') DateTime? endedAt,@JsonKey(name: 'total_questions') int? totalQuestions,@JsonKey(name: 'answered_count') int? answeredCount,@JsonKey(name: 'parent_pin_verified') bool parentPinVerified
});




}
/// @nodoc
class __$ExamSessionCopyWithImpl<$Res>
    implements _$ExamSessionCopyWith<$Res> {
  __$ExamSessionCopyWithImpl(this._self, this._then);

  final _ExamSession _self;
  final $Res Function(_ExamSession) _then;

/// Create a copy of ExamSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? studentId = null,Object? examType = null,Object? status = null,Object? kioskLocked = null,Object? startedAt = freezed,Object? endedAt = freezed,Object? totalQuestions = freezed,Object? answeredCount = freezed,Object? parentPinVerified = null,}) {
  return _then(_ExamSession(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,examType: null == examType ? _self.examType : examType // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,kioskLocked: null == kioskLocked ? _self.kioskLocked : kioskLocked // ignore: cast_nullable_to_non_nullable
as bool,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endedAt: freezed == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,totalQuestions: freezed == totalQuestions ? _self.totalQuestions : totalQuestions // ignore: cast_nullable_to_non_nullable
as int?,answeredCount: freezed == answeredCount ? _self.answeredCount : answeredCount // ignore: cast_nullable_to_non_nullable
as int?,parentPinVerified: null == parentPinVerified ? _self.parentPinVerified : parentPinVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
