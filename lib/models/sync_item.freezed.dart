// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SyncItem _$SyncItemFromJson(Map<String, dynamic> json) {
  return _SyncItem.fromJson(json);
}

/// @nodoc
mixin _$SyncItem {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'table_name')
  String get tableName => throw _privateConstructorUsedError;
  String get operation => throw _privateConstructorUsedError;
  String get payload => throw _privateConstructorUsedError;
  bool get synced => throw _privateConstructorUsedError;
  @JsonKey(name: 'retry_count')
  int get retryCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this SyncItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SyncItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SyncItemCopyWith<SyncItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncItemCopyWith<$Res> {
  factory $SyncItemCopyWith(SyncItem value, $Res Function(SyncItem) then) =
      _$SyncItemCopyWithImpl<$Res, SyncItem>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'table_name') String tableName,
    String operation,
    String payload,
    bool synced,
    @JsonKey(name: 'retry_count') int retryCount,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class _$SyncItemCopyWithImpl<$Res, $Val extends SyncItem>
    implements $SyncItemCopyWith<$Res> {
  _$SyncItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SyncItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tableName = null,
    Object? operation = null,
    Object? payload = null,
    Object? synced = null,
    Object? retryCount = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            tableName: null == tableName
                ? _value.tableName
                : tableName // ignore: cast_nullable_to_non_nullable
                      as String,
            operation: null == operation
                ? _value.operation
                : operation // ignore: cast_nullable_to_non_nullable
                      as String,
            payload: null == payload
                ? _value.payload
                : payload // ignore: cast_nullable_to_non_nullable
                      as String,
            synced: null == synced
                ? _value.synced
                : synced // ignore: cast_nullable_to_non_nullable
                      as bool,
            retryCount: null == retryCount
                ? _value.retryCount
                : retryCount // ignore: cast_nullable_to_non_nullable
                      as int,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SyncItemImplCopyWith<$Res>
    implements $SyncItemCopyWith<$Res> {
  factory _$$SyncItemImplCopyWith(
    _$SyncItemImpl value,
    $Res Function(_$SyncItemImpl) then,
  ) = __$$SyncItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'table_name') String tableName,
    String operation,
    String payload,
    bool synced,
    @JsonKey(name: 'retry_count') int retryCount,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class __$$SyncItemImplCopyWithImpl<$Res>
    extends _$SyncItemCopyWithImpl<$Res, _$SyncItemImpl>
    implements _$$SyncItemImplCopyWith<$Res> {
  __$$SyncItemImplCopyWithImpl(
    _$SyncItemImpl _value,
    $Res Function(_$SyncItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SyncItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tableName = null,
    Object? operation = null,
    Object? payload = null,
    Object? synced = null,
    Object? retryCount = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$SyncItemImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        tableName: null == tableName
            ? _value.tableName
            : tableName // ignore: cast_nullable_to_non_nullable
                  as String,
        operation: null == operation
            ? _value.operation
            : operation // ignore: cast_nullable_to_non_nullable
                  as String,
        payload: null == payload
            ? _value.payload
            : payload // ignore: cast_nullable_to_non_nullable
                  as String,
        synced: null == synced
            ? _value.synced
            : synced // ignore: cast_nullable_to_non_nullable
                  as bool,
        retryCount: null == retryCount
            ? _value.retryCount
            : retryCount // ignore: cast_nullable_to_non_nullable
                  as int,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SyncItemImpl implements _SyncItem {
  const _$SyncItemImpl({
    required this.id,
    @JsonKey(name: 'table_name') required this.tableName,
    required this.operation,
    required this.payload,
    required this.synced,
    @JsonKey(name: 'retry_count') required this.retryCount,
    @JsonKey(name: 'created_at') this.createdAt,
  });

  factory _$SyncItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SyncItemImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'table_name')
  final String tableName;
  @override
  final String operation;
  @override
  final String payload;
  @override
  final bool synced;
  @override
  @JsonKey(name: 'retry_count')
  final int retryCount;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'SyncItem(id: $id, tableName: $tableName, operation: $operation, payload: $payload, synced: $synced, retryCount: $retryCount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tableName, tableName) ||
                other.tableName == tableName) &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.synced, synced) || other.synced == synced) &&
            (identical(other.retryCount, retryCount) ||
                other.retryCount == retryCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    tableName,
    operation,
    payload,
    synced,
    retryCount,
    createdAt,
  );

  /// Create a copy of SyncItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncItemImplCopyWith<_$SyncItemImpl> get copyWith =>
      __$$SyncItemImplCopyWithImpl<_$SyncItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SyncItemImplToJson(this);
  }
}

abstract class _SyncItem implements SyncItem {
  const factory _SyncItem({
    required final String id,
    @JsonKey(name: 'table_name') required final String tableName,
    required final String operation,
    required final String payload,
    required final bool synced,
    @JsonKey(name: 'retry_count') required final int retryCount,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
  }) = _$SyncItemImpl;

  factory _SyncItem.fromJson(Map<String, dynamic> json) =
      _$SyncItemImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'table_name')
  String get tableName;
  @override
  String get operation;
  @override
  String get payload;
  @override
  bool get synced;
  @override
  @JsonKey(name: 'retry_count')
  int get retryCount;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of SyncItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SyncItemImplCopyWith<_$SyncItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
