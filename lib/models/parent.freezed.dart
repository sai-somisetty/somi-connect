// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Parent {

 String get id;@JsonKey(name: 'auth_id') String get authId; String get name; String get email; String? get phone;@JsonKey(name: 'language_pref') String? get languagePref;@JsonKey(name: 'pin_hash') String? get pinHash;@JsonKey(name: 'device_token') String? get deviceToken;
/// Create a copy of Parent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParentCopyWith<Parent> get copyWith => _$ParentCopyWithImpl<Parent>(this as Parent, _$identity);

  /// Serializes this Parent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Parent&&(identical(other.id, id) || other.id == id)&&(identical(other.authId, authId) || other.authId == authId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.languagePref, languagePref) || other.languagePref == languagePref)&&(identical(other.pinHash, pinHash) || other.pinHash == pinHash)&&(identical(other.deviceToken, deviceToken) || other.deviceToken == deviceToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,authId,name,email,phone,languagePref,pinHash,deviceToken);

@override
String toString() {
  return 'Parent(id: $id, authId: $authId, name: $name, email: $email, phone: $phone, languagePref: $languagePref, pinHash: $pinHash, deviceToken: $deviceToken)';
}


}

/// @nodoc
abstract mixin class $ParentCopyWith<$Res>  {
  factory $ParentCopyWith(Parent value, $Res Function(Parent) _then) = _$ParentCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'auth_id') String authId, String name, String email, String? phone,@JsonKey(name: 'language_pref') String? languagePref,@JsonKey(name: 'pin_hash') String? pinHash,@JsonKey(name: 'device_token') String? deviceToken
});




}
/// @nodoc
class _$ParentCopyWithImpl<$Res>
    implements $ParentCopyWith<$Res> {
  _$ParentCopyWithImpl(this._self, this._then);

  final Parent _self;
  final $Res Function(Parent) _then;

/// Create a copy of Parent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? authId = null,Object? name = null,Object? email = null,Object? phone = freezed,Object? languagePref = freezed,Object? pinHash = freezed,Object? deviceToken = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,authId: null == authId ? _self.authId : authId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,languagePref: freezed == languagePref ? _self.languagePref : languagePref // ignore: cast_nullable_to_non_nullable
as String?,pinHash: freezed == pinHash ? _self.pinHash : pinHash // ignore: cast_nullable_to_non_nullable
as String?,deviceToken: freezed == deviceToken ? _self.deviceToken : deviceToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Parent].
extension ParentPatterns on Parent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Parent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Parent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Parent value)  $default,){
final _that = this;
switch (_that) {
case _Parent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Parent value)?  $default,){
final _that = this;
switch (_that) {
case _Parent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'auth_id')  String authId,  String name,  String email,  String? phone, @JsonKey(name: 'language_pref')  String? languagePref, @JsonKey(name: 'pin_hash')  String? pinHash, @JsonKey(name: 'device_token')  String? deviceToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Parent() when $default != null:
return $default(_that.id,_that.authId,_that.name,_that.email,_that.phone,_that.languagePref,_that.pinHash,_that.deviceToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'auth_id')  String authId,  String name,  String email,  String? phone, @JsonKey(name: 'language_pref')  String? languagePref, @JsonKey(name: 'pin_hash')  String? pinHash, @JsonKey(name: 'device_token')  String? deviceToken)  $default,) {final _that = this;
switch (_that) {
case _Parent():
return $default(_that.id,_that.authId,_that.name,_that.email,_that.phone,_that.languagePref,_that.pinHash,_that.deviceToken);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'auth_id')  String authId,  String name,  String email,  String? phone, @JsonKey(name: 'language_pref')  String? languagePref, @JsonKey(name: 'pin_hash')  String? pinHash, @JsonKey(name: 'device_token')  String? deviceToken)?  $default,) {final _that = this;
switch (_that) {
case _Parent() when $default != null:
return $default(_that.id,_that.authId,_that.name,_that.email,_that.phone,_that.languagePref,_that.pinHash,_that.deviceToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Parent implements Parent {
  const _Parent({required this.id, @JsonKey(name: 'auth_id') required this.authId, required this.name, required this.email, this.phone, @JsonKey(name: 'language_pref') this.languagePref, @JsonKey(name: 'pin_hash') this.pinHash, @JsonKey(name: 'device_token') this.deviceToken});
  factory _Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);

@override final  String id;
@override@JsonKey(name: 'auth_id') final  String authId;
@override final  String name;
@override final  String email;
@override final  String? phone;
@override@JsonKey(name: 'language_pref') final  String? languagePref;
@override@JsonKey(name: 'pin_hash') final  String? pinHash;
@override@JsonKey(name: 'device_token') final  String? deviceToken;

/// Create a copy of Parent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParentCopyWith<_Parent> get copyWith => __$ParentCopyWithImpl<_Parent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Parent&&(identical(other.id, id) || other.id == id)&&(identical(other.authId, authId) || other.authId == authId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.languagePref, languagePref) || other.languagePref == languagePref)&&(identical(other.pinHash, pinHash) || other.pinHash == pinHash)&&(identical(other.deviceToken, deviceToken) || other.deviceToken == deviceToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,authId,name,email,phone,languagePref,pinHash,deviceToken);

@override
String toString() {
  return 'Parent(id: $id, authId: $authId, name: $name, email: $email, phone: $phone, languagePref: $languagePref, pinHash: $pinHash, deviceToken: $deviceToken)';
}


}

/// @nodoc
abstract mixin class _$ParentCopyWith<$Res> implements $ParentCopyWith<$Res> {
  factory _$ParentCopyWith(_Parent value, $Res Function(_Parent) _then) = __$ParentCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'auth_id') String authId, String name, String email, String? phone,@JsonKey(name: 'language_pref') String? languagePref,@JsonKey(name: 'pin_hash') String? pinHash,@JsonKey(name: 'device_token') String? deviceToken
});




}
/// @nodoc
class __$ParentCopyWithImpl<$Res>
    implements _$ParentCopyWith<$Res> {
  __$ParentCopyWithImpl(this._self, this._then);

  final _Parent _self;
  final $Res Function(_Parent) _then;

/// Create a copy of Parent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? authId = null,Object? name = null,Object? email = null,Object? phone = freezed,Object? languagePref = freezed,Object? pinHash = freezed,Object? deviceToken = freezed,}) {
  return _then(_Parent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,authId: null == authId ? _self.authId : authId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,languagePref: freezed == languagePref ? _self.languagePref : languagePref // ignore: cast_nullable_to_non_nullable
as String?,pinHash: freezed == pinHash ? _self.pinHash : pinHash // ignore: cast_nullable_to_non_nullable
as String?,deviceToken: freezed == deviceToken ? _self.deviceToken : deviceToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
