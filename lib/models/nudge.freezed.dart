// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nudge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Nudge {

 String get id;@JsonKey(name: 'parent_id') String get parentId;@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'nudge_type') String get nudgeType; String get title; String get body; String get priority;@JsonKey(name: 'is_read') bool get isRead;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of Nudge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NudgeCopyWith<Nudge> get copyWith => _$NudgeCopyWithImpl<Nudge>(this as Nudge, _$identity);

  /// Serializes this Nudge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Nudge&&(identical(other.id, id) || other.id == id)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.nudgeType, nudgeType) || other.nudgeType == nudgeType)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,parentId,studentId,nudgeType,title,body,priority,isRead,createdAt);

@override
String toString() {
  return 'Nudge(id: $id, parentId: $parentId, studentId: $studentId, nudgeType: $nudgeType, title: $title, body: $body, priority: $priority, isRead: $isRead, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $NudgeCopyWith<$Res>  {
  factory $NudgeCopyWith(Nudge value, $Res Function(Nudge) _then) = _$NudgeCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'parent_id') String parentId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'nudge_type') String nudgeType, String title, String body, String priority,@JsonKey(name: 'is_read') bool isRead,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$NudgeCopyWithImpl<$Res>
    implements $NudgeCopyWith<$Res> {
  _$NudgeCopyWithImpl(this._self, this._then);

  final Nudge _self;
  final $Res Function(Nudge) _then;

/// Create a copy of Nudge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? parentId = null,Object? studentId = null,Object? nudgeType = null,Object? title = null,Object? body = null,Object? priority = null,Object? isRead = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,nudgeType: null == nudgeType ? _self.nudgeType : nudgeType // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Nudge].
extension NudgePatterns on Nudge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Nudge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Nudge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Nudge value)  $default,){
final _that = this;
switch (_that) {
case _Nudge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Nudge value)?  $default,){
final _that = this;
switch (_that) {
case _Nudge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'parent_id')  String parentId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'nudge_type')  String nudgeType,  String title,  String body,  String priority, @JsonKey(name: 'is_read')  bool isRead, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Nudge() when $default != null:
return $default(_that.id,_that.parentId,_that.studentId,_that.nudgeType,_that.title,_that.body,_that.priority,_that.isRead,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'parent_id')  String parentId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'nudge_type')  String nudgeType,  String title,  String body,  String priority, @JsonKey(name: 'is_read')  bool isRead, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Nudge():
return $default(_that.id,_that.parentId,_that.studentId,_that.nudgeType,_that.title,_that.body,_that.priority,_that.isRead,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'parent_id')  String parentId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'nudge_type')  String nudgeType,  String title,  String body,  String priority, @JsonKey(name: 'is_read')  bool isRead, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Nudge() when $default != null:
return $default(_that.id,_that.parentId,_that.studentId,_that.nudgeType,_that.title,_that.body,_that.priority,_that.isRead,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Nudge implements Nudge {
  const _Nudge({required this.id, @JsonKey(name: 'parent_id') required this.parentId, @JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'nudge_type') required this.nudgeType, required this.title, required this.body, required this.priority, @JsonKey(name: 'is_read') required this.isRead, @JsonKey(name: 'created_at') this.createdAt});
  factory _Nudge.fromJson(Map<String, dynamic> json) => _$NudgeFromJson(json);

@override final  String id;
@override@JsonKey(name: 'parent_id') final  String parentId;
@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'nudge_type') final  String nudgeType;
@override final  String title;
@override final  String body;
@override final  String priority;
@override@JsonKey(name: 'is_read') final  bool isRead;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of Nudge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NudgeCopyWith<_Nudge> get copyWith => __$NudgeCopyWithImpl<_Nudge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NudgeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Nudge&&(identical(other.id, id) || other.id == id)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.nudgeType, nudgeType) || other.nudgeType == nudgeType)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,parentId,studentId,nudgeType,title,body,priority,isRead,createdAt);

@override
String toString() {
  return 'Nudge(id: $id, parentId: $parentId, studentId: $studentId, nudgeType: $nudgeType, title: $title, body: $body, priority: $priority, isRead: $isRead, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$NudgeCopyWith<$Res> implements $NudgeCopyWith<$Res> {
  factory _$NudgeCopyWith(_Nudge value, $Res Function(_Nudge) _then) = __$NudgeCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'parent_id') String parentId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'nudge_type') String nudgeType, String title, String body, String priority,@JsonKey(name: 'is_read') bool isRead,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$NudgeCopyWithImpl<$Res>
    implements _$NudgeCopyWith<$Res> {
  __$NudgeCopyWithImpl(this._self, this._then);

  final _Nudge _self;
  final $Res Function(_Nudge) _then;

/// Create a copy of Nudge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? parentId = null,Object? studentId = null,Object? nudgeType = null,Object? title = null,Object? body = null,Object? priority = null,Object? isRead = null,Object? createdAt = freezed,}) {
  return _then(_Nudge(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,nudgeType: null == nudgeType ? _self.nudgeType : nudgeType // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
