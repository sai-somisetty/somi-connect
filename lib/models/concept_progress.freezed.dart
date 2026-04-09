// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'concept_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConceptProgress {

 String get id;@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'concept_name') String get conceptName;@JsonKey(name: 'progress_percent') double get progressPercent;
/// Create a copy of ConceptProgress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConceptProgressCopyWith<ConceptProgress> get copyWith => _$ConceptProgressCopyWithImpl<ConceptProgress>(this as ConceptProgress, _$identity);

  /// Serializes this ConceptProgress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConceptProgress&&(identical(other.id, id) || other.id == id)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.conceptName, conceptName) || other.conceptName == conceptName)&&(identical(other.progressPercent, progressPercent) || other.progressPercent == progressPercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,studentId,conceptName,progressPercent);

@override
String toString() {
  return 'ConceptProgress(id: $id, studentId: $studentId, conceptName: $conceptName, progressPercent: $progressPercent)';
}


}

/// @nodoc
abstract mixin class $ConceptProgressCopyWith<$Res>  {
  factory $ConceptProgressCopyWith(ConceptProgress value, $Res Function(ConceptProgress) _then) = _$ConceptProgressCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'concept_name') String conceptName,@JsonKey(name: 'progress_percent') double progressPercent
});




}
/// @nodoc
class _$ConceptProgressCopyWithImpl<$Res>
    implements $ConceptProgressCopyWith<$Res> {
  _$ConceptProgressCopyWithImpl(this._self, this._then);

  final ConceptProgress _self;
  final $Res Function(ConceptProgress) _then;

/// Create a copy of ConceptProgress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? studentId = null,Object? conceptName = null,Object? progressPercent = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,conceptName: null == conceptName ? _self.conceptName : conceptName // ignore: cast_nullable_to_non_nullable
as String,progressPercent: null == progressPercent ? _self.progressPercent : progressPercent // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ConceptProgress].
extension ConceptProgressPatterns on ConceptProgress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConceptProgress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConceptProgress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConceptProgress value)  $default,){
final _that = this;
switch (_that) {
case _ConceptProgress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConceptProgress value)?  $default,){
final _that = this;
switch (_that) {
case _ConceptProgress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'concept_name')  String conceptName, @JsonKey(name: 'progress_percent')  double progressPercent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConceptProgress() when $default != null:
return $default(_that.id,_that.studentId,_that.conceptName,_that.progressPercent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'concept_name')  String conceptName, @JsonKey(name: 'progress_percent')  double progressPercent)  $default,) {final _that = this;
switch (_that) {
case _ConceptProgress():
return $default(_that.id,_that.studentId,_that.conceptName,_that.progressPercent);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'concept_name')  String conceptName, @JsonKey(name: 'progress_percent')  double progressPercent)?  $default,) {final _that = this;
switch (_that) {
case _ConceptProgress() when $default != null:
return $default(_that.id,_that.studentId,_that.conceptName,_that.progressPercent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConceptProgress implements ConceptProgress {
  const _ConceptProgress({required this.id, @JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'concept_name') required this.conceptName, @JsonKey(name: 'progress_percent') required this.progressPercent});
  factory _ConceptProgress.fromJson(Map<String, dynamic> json) => _$ConceptProgressFromJson(json);

@override final  String id;
@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'concept_name') final  String conceptName;
@override@JsonKey(name: 'progress_percent') final  double progressPercent;

/// Create a copy of ConceptProgress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConceptProgressCopyWith<_ConceptProgress> get copyWith => __$ConceptProgressCopyWithImpl<_ConceptProgress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConceptProgressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConceptProgress&&(identical(other.id, id) || other.id == id)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.conceptName, conceptName) || other.conceptName == conceptName)&&(identical(other.progressPercent, progressPercent) || other.progressPercent == progressPercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,studentId,conceptName,progressPercent);

@override
String toString() {
  return 'ConceptProgress(id: $id, studentId: $studentId, conceptName: $conceptName, progressPercent: $progressPercent)';
}


}

/// @nodoc
abstract mixin class _$ConceptProgressCopyWith<$Res> implements $ConceptProgressCopyWith<$Res> {
  factory _$ConceptProgressCopyWith(_ConceptProgress value, $Res Function(_ConceptProgress) _then) = __$ConceptProgressCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'concept_name') String conceptName,@JsonKey(name: 'progress_percent') double progressPercent
});




}
/// @nodoc
class __$ConceptProgressCopyWithImpl<$Res>
    implements _$ConceptProgressCopyWith<$Res> {
  __$ConceptProgressCopyWithImpl(this._self, this._then);

  final _ConceptProgress _self;
  final $Res Function(_ConceptProgress) _then;

/// Create a copy of ConceptProgress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? studentId = null,Object? conceptName = null,Object? progressPercent = null,}) {
  return _then(_ConceptProgress(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,conceptName: null == conceptName ? _self.conceptName : conceptName // ignore: cast_nullable_to_non_nullable
as String,progressPercent: null == progressPercent ? _self.progressPercent : progressPercent // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
