// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudyActivity {

 String get id;@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'activity_date') DateTime get activityDate;@JsonKey(name: 'activity_type') String get activityType;@JsonKey(name: 'duration_minutes') int? get durationMinutes;@JsonKey(name: 'chapter_id') String? get chapterId;@JsonKey(name: 'concept_id') String? get conceptId;
/// Create a copy of StudyActivity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudyActivityCopyWith<StudyActivity> get copyWith => _$StudyActivityCopyWithImpl<StudyActivity>(this as StudyActivity, _$identity);

  /// Serializes this StudyActivity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudyActivity&&(identical(other.id, id) || other.id == id)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.activityDate, activityDate) || other.activityDate == activityDate)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.chapterId, chapterId) || other.chapterId == chapterId)&&(identical(other.conceptId, conceptId) || other.conceptId == conceptId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,studentId,activityDate,activityType,durationMinutes,chapterId,conceptId);

@override
String toString() {
  return 'StudyActivity(id: $id, studentId: $studentId, activityDate: $activityDate, activityType: $activityType, durationMinutes: $durationMinutes, chapterId: $chapterId, conceptId: $conceptId)';
}


}

/// @nodoc
abstract mixin class $StudyActivityCopyWith<$Res>  {
  factory $StudyActivityCopyWith(StudyActivity value, $Res Function(StudyActivity) _then) = _$StudyActivityCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'activity_date') DateTime activityDate,@JsonKey(name: 'activity_type') String activityType,@JsonKey(name: 'duration_minutes') int? durationMinutes,@JsonKey(name: 'chapter_id') String? chapterId,@JsonKey(name: 'concept_id') String? conceptId
});




}
/// @nodoc
class _$StudyActivityCopyWithImpl<$Res>
    implements $StudyActivityCopyWith<$Res> {
  _$StudyActivityCopyWithImpl(this._self, this._then);

  final StudyActivity _self;
  final $Res Function(StudyActivity) _then;

/// Create a copy of StudyActivity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? studentId = null,Object? activityDate = null,Object? activityType = null,Object? durationMinutes = freezed,Object? chapterId = freezed,Object? conceptId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,activityDate: null == activityDate ? _self.activityDate : activityDate // ignore: cast_nullable_to_non_nullable
as DateTime,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: freezed == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int?,chapterId: freezed == chapterId ? _self.chapterId : chapterId // ignore: cast_nullable_to_non_nullable
as String?,conceptId: freezed == conceptId ? _self.conceptId : conceptId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StudyActivity].
extension StudyActivityPatterns on StudyActivity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudyActivity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudyActivity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudyActivity value)  $default,){
final _that = this;
switch (_that) {
case _StudyActivity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudyActivity value)?  $default,){
final _that = this;
switch (_that) {
case _StudyActivity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'activity_date')  DateTime activityDate, @JsonKey(name: 'activity_type')  String activityType, @JsonKey(name: 'duration_minutes')  int? durationMinutes, @JsonKey(name: 'chapter_id')  String? chapterId, @JsonKey(name: 'concept_id')  String? conceptId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudyActivity() when $default != null:
return $default(_that.id,_that.studentId,_that.activityDate,_that.activityType,_that.durationMinutes,_that.chapterId,_that.conceptId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'activity_date')  DateTime activityDate, @JsonKey(name: 'activity_type')  String activityType, @JsonKey(name: 'duration_minutes')  int? durationMinutes, @JsonKey(name: 'chapter_id')  String? chapterId, @JsonKey(name: 'concept_id')  String? conceptId)  $default,) {final _that = this;
switch (_that) {
case _StudyActivity():
return $default(_that.id,_that.studentId,_that.activityDate,_that.activityType,_that.durationMinutes,_that.chapterId,_that.conceptId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'activity_date')  DateTime activityDate, @JsonKey(name: 'activity_type')  String activityType, @JsonKey(name: 'duration_minutes')  int? durationMinutes, @JsonKey(name: 'chapter_id')  String? chapterId, @JsonKey(name: 'concept_id')  String? conceptId)?  $default,) {final _that = this;
switch (_that) {
case _StudyActivity() when $default != null:
return $default(_that.id,_that.studentId,_that.activityDate,_that.activityType,_that.durationMinutes,_that.chapterId,_that.conceptId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudyActivity implements StudyActivity {
  const _StudyActivity({required this.id, @JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'activity_date') required this.activityDate, @JsonKey(name: 'activity_type') required this.activityType, @JsonKey(name: 'duration_minutes') this.durationMinutes, @JsonKey(name: 'chapter_id') this.chapterId, @JsonKey(name: 'concept_id') this.conceptId});
  factory _StudyActivity.fromJson(Map<String, dynamic> json) => _$StudyActivityFromJson(json);

@override final  String id;
@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'activity_date') final  DateTime activityDate;
@override@JsonKey(name: 'activity_type') final  String activityType;
@override@JsonKey(name: 'duration_minutes') final  int? durationMinutes;
@override@JsonKey(name: 'chapter_id') final  String? chapterId;
@override@JsonKey(name: 'concept_id') final  String? conceptId;

/// Create a copy of StudyActivity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudyActivityCopyWith<_StudyActivity> get copyWith => __$StudyActivityCopyWithImpl<_StudyActivity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudyActivityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudyActivity&&(identical(other.id, id) || other.id == id)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.activityDate, activityDate) || other.activityDate == activityDate)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.chapterId, chapterId) || other.chapterId == chapterId)&&(identical(other.conceptId, conceptId) || other.conceptId == conceptId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,studentId,activityDate,activityType,durationMinutes,chapterId,conceptId);

@override
String toString() {
  return 'StudyActivity(id: $id, studentId: $studentId, activityDate: $activityDate, activityType: $activityType, durationMinutes: $durationMinutes, chapterId: $chapterId, conceptId: $conceptId)';
}


}

/// @nodoc
abstract mixin class _$StudyActivityCopyWith<$Res> implements $StudyActivityCopyWith<$Res> {
  factory _$StudyActivityCopyWith(_StudyActivity value, $Res Function(_StudyActivity) _then) = __$StudyActivityCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'activity_date') DateTime activityDate,@JsonKey(name: 'activity_type') String activityType,@JsonKey(name: 'duration_minutes') int? durationMinutes,@JsonKey(name: 'chapter_id') String? chapterId,@JsonKey(name: 'concept_id') String? conceptId
});




}
/// @nodoc
class __$StudyActivityCopyWithImpl<$Res>
    implements _$StudyActivityCopyWith<$Res> {
  __$StudyActivityCopyWithImpl(this._self, this._then);

  final _StudyActivity _self;
  final $Res Function(_StudyActivity) _then;

/// Create a copy of StudyActivity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? studentId = null,Object? activityDate = null,Object? activityType = null,Object? durationMinutes = freezed,Object? chapterId = freezed,Object? conceptId = freezed,}) {
  return _then(_StudyActivity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,activityDate: null == activityDate ? _self.activityDate : activityDate // ignore: cast_nullable_to_non_nullable
as DateTime,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: freezed == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int?,chapterId: freezed == chapterId ? _self.chapterId : chapterId // ignore: cast_nullable_to_non_nullable
as String?,conceptId: freezed == conceptId ? _self.conceptId : conceptId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
