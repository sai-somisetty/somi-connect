// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parent_student_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParentStudentLink {

 String get id;@JsonKey(name: 'parent_id') String get parentId;@JsonKey(name: 'student_id') String get studentId; String get relationship; bool get verified;
/// Create a copy of ParentStudentLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParentStudentLinkCopyWith<ParentStudentLink> get copyWith => _$ParentStudentLinkCopyWithImpl<ParentStudentLink>(this as ParentStudentLink, _$identity);

  /// Serializes this ParentStudentLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParentStudentLink&&(identical(other.id, id) || other.id == id)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.relationship, relationship) || other.relationship == relationship)&&(identical(other.verified, verified) || other.verified == verified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,parentId,studentId,relationship,verified);

@override
String toString() {
  return 'ParentStudentLink(id: $id, parentId: $parentId, studentId: $studentId, relationship: $relationship, verified: $verified)';
}


}

/// @nodoc
abstract mixin class $ParentStudentLinkCopyWith<$Res>  {
  factory $ParentStudentLinkCopyWith(ParentStudentLink value, $Res Function(ParentStudentLink) _then) = _$ParentStudentLinkCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'parent_id') String parentId,@JsonKey(name: 'student_id') String studentId, String relationship, bool verified
});




}
/// @nodoc
class _$ParentStudentLinkCopyWithImpl<$Res>
    implements $ParentStudentLinkCopyWith<$Res> {
  _$ParentStudentLinkCopyWithImpl(this._self, this._then);

  final ParentStudentLink _self;
  final $Res Function(ParentStudentLink) _then;

/// Create a copy of ParentStudentLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? parentId = null,Object? studentId = null,Object? relationship = null,Object? verified = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,relationship: null == relationship ? _self.relationship : relationship // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ParentStudentLink].
extension ParentStudentLinkPatterns on ParentStudentLink {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParentStudentLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParentStudentLink() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParentStudentLink value)  $default,){
final _that = this;
switch (_that) {
case _ParentStudentLink():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParentStudentLink value)?  $default,){
final _that = this;
switch (_that) {
case _ParentStudentLink() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'parent_id')  String parentId, @JsonKey(name: 'student_id')  String studentId,  String relationship,  bool verified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParentStudentLink() when $default != null:
return $default(_that.id,_that.parentId,_that.studentId,_that.relationship,_that.verified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'parent_id')  String parentId, @JsonKey(name: 'student_id')  String studentId,  String relationship,  bool verified)  $default,) {final _that = this;
switch (_that) {
case _ParentStudentLink():
return $default(_that.id,_that.parentId,_that.studentId,_that.relationship,_that.verified);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'parent_id')  String parentId, @JsonKey(name: 'student_id')  String studentId,  String relationship,  bool verified)?  $default,) {final _that = this;
switch (_that) {
case _ParentStudentLink() when $default != null:
return $default(_that.id,_that.parentId,_that.studentId,_that.relationship,_that.verified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParentStudentLink implements ParentStudentLink {
  const _ParentStudentLink({required this.id, @JsonKey(name: 'parent_id') required this.parentId, @JsonKey(name: 'student_id') required this.studentId, required this.relationship, required this.verified});
  factory _ParentStudentLink.fromJson(Map<String, dynamic> json) => _$ParentStudentLinkFromJson(json);

@override final  String id;
@override@JsonKey(name: 'parent_id') final  String parentId;
@override@JsonKey(name: 'student_id') final  String studentId;
@override final  String relationship;
@override final  bool verified;

/// Create a copy of ParentStudentLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParentStudentLinkCopyWith<_ParentStudentLink> get copyWith => __$ParentStudentLinkCopyWithImpl<_ParentStudentLink>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParentStudentLinkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParentStudentLink&&(identical(other.id, id) || other.id == id)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.relationship, relationship) || other.relationship == relationship)&&(identical(other.verified, verified) || other.verified == verified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,parentId,studentId,relationship,verified);

@override
String toString() {
  return 'ParentStudentLink(id: $id, parentId: $parentId, studentId: $studentId, relationship: $relationship, verified: $verified)';
}


}

/// @nodoc
abstract mixin class _$ParentStudentLinkCopyWith<$Res> implements $ParentStudentLinkCopyWith<$Res> {
  factory _$ParentStudentLinkCopyWith(_ParentStudentLink value, $Res Function(_ParentStudentLink) _then) = __$ParentStudentLinkCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'parent_id') String parentId,@JsonKey(name: 'student_id') String studentId, String relationship, bool verified
});




}
/// @nodoc
class __$ParentStudentLinkCopyWithImpl<$Res>
    implements _$ParentStudentLinkCopyWith<$Res> {
  __$ParentStudentLinkCopyWithImpl(this._self, this._then);

  final _ParentStudentLink _self;
  final $Res Function(_ParentStudentLink) _then;

/// Create a copy of ParentStudentLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? parentId = null,Object? studentId = null,Object? relationship = null,Object? verified = null,}) {
  return _then(_ParentStudentLink(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,relationship: null == relationship ? _self.relationship : relationship // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
