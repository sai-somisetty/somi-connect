// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SyncItem {

 String get id;@JsonKey(name: 'table_name') String get tableName; String get operation; String get payload; bool get synced;@JsonKey(name: 'retry_count') int get retryCount;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of SyncItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncItemCopyWith<SyncItem> get copyWith => _$SyncItemCopyWithImpl<SyncItem>(this as SyncItem, _$identity);

  /// Serializes this SyncItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncItem&&(identical(other.id, id) || other.id == id)&&(identical(other.tableName, tableName) || other.tableName == tableName)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.synced, synced) || other.synced == synced)&&(identical(other.retryCount, retryCount) || other.retryCount == retryCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tableName,operation,payload,synced,retryCount,createdAt);

@override
String toString() {
  return 'SyncItem(id: $id, tableName: $tableName, operation: $operation, payload: $payload, synced: $synced, retryCount: $retryCount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SyncItemCopyWith<$Res>  {
  factory $SyncItemCopyWith(SyncItem value, $Res Function(SyncItem) _then) = _$SyncItemCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'table_name') String tableName, String operation, String payload, bool synced,@JsonKey(name: 'retry_count') int retryCount,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$SyncItemCopyWithImpl<$Res>
    implements $SyncItemCopyWith<$Res> {
  _$SyncItemCopyWithImpl(this._self, this._then);

  final SyncItem _self;
  final $Res Function(SyncItem) _then;

/// Create a copy of SyncItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? tableName = null,Object? operation = null,Object? payload = null,Object? synced = null,Object? retryCount = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tableName: null == tableName ? _self.tableName : tableName // ignore: cast_nullable_to_non_nullable
as String,operation: null == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as String,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String,synced: null == synced ? _self.synced : synced // ignore: cast_nullable_to_non_nullable
as bool,retryCount: null == retryCount ? _self.retryCount : retryCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncItem].
extension SyncItemPatterns on SyncItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncItem value)  $default,){
final _that = this;
switch (_that) {
case _SyncItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncItem value)?  $default,){
final _that = this;
switch (_that) {
case _SyncItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'table_name')  String tableName,  String operation,  String payload,  bool synced, @JsonKey(name: 'retry_count')  int retryCount, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncItem() when $default != null:
return $default(_that.id,_that.tableName,_that.operation,_that.payload,_that.synced,_that.retryCount,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'table_name')  String tableName,  String operation,  String payload,  bool synced, @JsonKey(name: 'retry_count')  int retryCount, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _SyncItem():
return $default(_that.id,_that.tableName,_that.operation,_that.payload,_that.synced,_that.retryCount,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'table_name')  String tableName,  String operation,  String payload,  bool synced, @JsonKey(name: 'retry_count')  int retryCount, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SyncItem() when $default != null:
return $default(_that.id,_that.tableName,_that.operation,_that.payload,_that.synced,_that.retryCount,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncItem implements SyncItem {
  const _SyncItem({required this.id, @JsonKey(name: 'table_name') required this.tableName, required this.operation, required this.payload, required this.synced, @JsonKey(name: 'retry_count') required this.retryCount, @JsonKey(name: 'created_at') this.createdAt});
  factory _SyncItem.fromJson(Map<String, dynamic> json) => _$SyncItemFromJson(json);

@override final  String id;
@override@JsonKey(name: 'table_name') final  String tableName;
@override final  String operation;
@override final  String payload;
@override final  bool synced;
@override@JsonKey(name: 'retry_count') final  int retryCount;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of SyncItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncItemCopyWith<_SyncItem> get copyWith => __$SyncItemCopyWithImpl<_SyncItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncItem&&(identical(other.id, id) || other.id == id)&&(identical(other.tableName, tableName) || other.tableName == tableName)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.synced, synced) || other.synced == synced)&&(identical(other.retryCount, retryCount) || other.retryCount == retryCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tableName,operation,payload,synced,retryCount,createdAt);

@override
String toString() {
  return 'SyncItem(id: $id, tableName: $tableName, operation: $operation, payload: $payload, synced: $synced, retryCount: $retryCount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SyncItemCopyWith<$Res> implements $SyncItemCopyWith<$Res> {
  factory _$SyncItemCopyWith(_SyncItem value, $Res Function(_SyncItem) _then) = __$SyncItemCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'table_name') String tableName, String operation, String payload, bool synced,@JsonKey(name: 'retry_count') int retryCount,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$SyncItemCopyWithImpl<$Res>
    implements _$SyncItemCopyWith<$Res> {
  __$SyncItemCopyWithImpl(this._self, this._then);

  final _SyncItem _self;
  final $Res Function(_SyncItem) _then;

/// Create a copy of SyncItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? tableName = null,Object? operation = null,Object? payload = null,Object? synced = null,Object? retryCount = null,Object? createdAt = freezed,}) {
  return _then(_SyncItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tableName: null == tableName ? _self.tableName : tableName // ignore: cast_nullable_to_non_nullable
as String,operation: null == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as String,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String,synced: null == synced ? _self.synced : synced // ignore: cast_nullable_to_non_nullable
as bool,retryCount: null == retryCount ? _self.retryCount : retryCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
