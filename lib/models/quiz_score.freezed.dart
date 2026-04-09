// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuizScore {

 String get id;@JsonKey(name: 'student_id') String get studentId; int? get score; int? get total; String? get chapter;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of QuizScore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizScoreCopyWith<QuizScore> get copyWith => _$QuizScoreCopyWithImpl<QuizScore>(this as QuizScore, _$identity);

  /// Serializes this QuizScore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizScore&&(identical(other.id, id) || other.id == id)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.score, score) || other.score == score)&&(identical(other.total, total) || other.total == total)&&(identical(other.chapter, chapter) || other.chapter == chapter)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,studentId,score,total,chapter,createdAt);

@override
String toString() {
  return 'QuizScore(id: $id, studentId: $studentId, score: $score, total: $total, chapter: $chapter, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $QuizScoreCopyWith<$Res>  {
  factory $QuizScoreCopyWith(QuizScore value, $Res Function(QuizScore) _then) = _$QuizScoreCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'student_id') String studentId, int? score, int? total, String? chapter,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$QuizScoreCopyWithImpl<$Res>
    implements $QuizScoreCopyWith<$Res> {
  _$QuizScoreCopyWithImpl(this._self, this._then);

  final QuizScore _self;
  final $Res Function(QuizScore) _then;

/// Create a copy of QuizScore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? studentId = null,Object? score = freezed,Object? total = freezed,Object? chapter = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,chapter: freezed == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizScore].
extension QuizScorePatterns on QuizScore {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizScore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizScore() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizScore value)  $default,){
final _that = this;
switch (_that) {
case _QuizScore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizScore value)?  $default,){
final _that = this;
switch (_that) {
case _QuizScore() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'student_id')  String studentId,  int? score,  int? total,  String? chapter, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizScore() when $default != null:
return $default(_that.id,_that.studentId,_that.score,_that.total,_that.chapter,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'student_id')  String studentId,  int? score,  int? total,  String? chapter, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _QuizScore():
return $default(_that.id,_that.studentId,_that.score,_that.total,_that.chapter,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'student_id')  String studentId,  int? score,  int? total,  String? chapter, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _QuizScore() when $default != null:
return $default(_that.id,_that.studentId,_that.score,_that.total,_that.chapter,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizScore implements QuizScore {
  const _QuizScore({required this.id, @JsonKey(name: 'student_id') required this.studentId, this.score, this.total, this.chapter, @JsonKey(name: 'created_at') this.createdAt});
  factory _QuizScore.fromJson(Map<String, dynamic> json) => _$QuizScoreFromJson(json);

@override final  String id;
@override@JsonKey(name: 'student_id') final  String studentId;
@override final  int? score;
@override final  int? total;
@override final  String? chapter;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of QuizScore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizScoreCopyWith<_QuizScore> get copyWith => __$QuizScoreCopyWithImpl<_QuizScore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizScoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizScore&&(identical(other.id, id) || other.id == id)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.score, score) || other.score == score)&&(identical(other.total, total) || other.total == total)&&(identical(other.chapter, chapter) || other.chapter == chapter)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,studentId,score,total,chapter,createdAt);

@override
String toString() {
  return 'QuizScore(id: $id, studentId: $studentId, score: $score, total: $total, chapter: $chapter, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$QuizScoreCopyWith<$Res> implements $QuizScoreCopyWith<$Res> {
  factory _$QuizScoreCopyWith(_QuizScore value, $Res Function(_QuizScore) _then) = __$QuizScoreCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'student_id') String studentId, int? score, int? total, String? chapter,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$QuizScoreCopyWithImpl<$Res>
    implements _$QuizScoreCopyWith<$Res> {
  __$QuizScoreCopyWithImpl(this._self, this._then);

  final _QuizScore _self;
  final $Res Function(_QuizScore) _then;

/// Create a copy of QuizScore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? studentId = null,Object? score = freezed,Object? total = freezed,Object? chapter = freezed,Object? createdAt = freezed,}) {
  return _then(_QuizScore(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,chapter: freezed == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
