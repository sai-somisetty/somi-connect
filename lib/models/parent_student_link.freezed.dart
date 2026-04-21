// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parent_student_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ParentStudentLink _$ParentStudentLinkFromJson(Map<String, dynamic> json) {
  return _ParentStudentLink.fromJson(json);
}

/// @nodoc
mixin _$ParentStudentLink {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  String get studentId => throw _privateConstructorUsedError;
  String get relationship => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;

  /// Serializes this ParentStudentLink to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParentStudentLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParentStudentLinkCopyWith<ParentStudentLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentStudentLinkCopyWith<$Res> {
  factory $ParentStudentLinkCopyWith(
    ParentStudentLink value,
    $Res Function(ParentStudentLink) then,
  ) = _$ParentStudentLinkCopyWithImpl<$Res, ParentStudentLink>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'parent_id') String parentId,
    @JsonKey(name: 'student_id') String studentId,
    String relationship,
    bool verified,
  });
}

/// @nodoc
class _$ParentStudentLinkCopyWithImpl<$Res, $Val extends ParentStudentLink>
    implements $ParentStudentLinkCopyWith<$Res> {
  _$ParentStudentLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParentStudentLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? studentId = null,
    Object? relationship = null,
    Object? verified = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            parentId: null == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as String,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as String,
            relationship: null == relationship
                ? _value.relationship
                : relationship // ignore: cast_nullable_to_non_nullable
                      as String,
            verified: null == verified
                ? _value.verified
                : verified // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ParentStudentLinkImplCopyWith<$Res>
    implements $ParentStudentLinkCopyWith<$Res> {
  factory _$$ParentStudentLinkImplCopyWith(
    _$ParentStudentLinkImpl value,
    $Res Function(_$ParentStudentLinkImpl) then,
  ) = __$$ParentStudentLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'parent_id') String parentId,
    @JsonKey(name: 'student_id') String studentId,
    String relationship,
    bool verified,
  });
}

/// @nodoc
class __$$ParentStudentLinkImplCopyWithImpl<$Res>
    extends _$ParentStudentLinkCopyWithImpl<$Res, _$ParentStudentLinkImpl>
    implements _$$ParentStudentLinkImplCopyWith<$Res> {
  __$$ParentStudentLinkImplCopyWithImpl(
    _$ParentStudentLinkImpl _value,
    $Res Function(_$ParentStudentLinkImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ParentStudentLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? studentId = null,
    Object? relationship = null,
    Object? verified = null,
  }) {
    return _then(
      _$ParentStudentLinkImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        parentId: null == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as String,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String,
        relationship: null == relationship
            ? _value.relationship
            : relationship // ignore: cast_nullable_to_non_nullable
                  as String,
        verified: null == verified
            ? _value.verified
            : verified // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ParentStudentLinkImpl implements _ParentStudentLink {
  const _$ParentStudentLinkImpl({
    required this.id,
    @JsonKey(name: 'parent_id') required this.parentId,
    @JsonKey(name: 'student_id') required this.studentId,
    required this.relationship,
    required this.verified,
  });

  factory _$ParentStudentLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParentStudentLinkImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'parent_id')
  final String parentId;
  @override
  @JsonKey(name: 'student_id')
  final String studentId;
  @override
  final String relationship;
  @override
  final bool verified;

  @override
  String toString() {
    return 'ParentStudentLink(id: $id, parentId: $parentId, studentId: $studentId, relationship: $relationship, verified: $verified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParentStudentLinkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.verified, verified) ||
                other.verified == verified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, parentId, studentId, relationship, verified);

  /// Create a copy of ParentStudentLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParentStudentLinkImplCopyWith<_$ParentStudentLinkImpl> get copyWith =>
      __$$ParentStudentLinkImplCopyWithImpl<_$ParentStudentLinkImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ParentStudentLinkImplToJson(this);
  }
}

abstract class _ParentStudentLink implements ParentStudentLink {
  const factory _ParentStudentLink({
    required final String id,
    @JsonKey(name: 'parent_id') required final String parentId,
    @JsonKey(name: 'student_id') required final String studentId,
    required final String relationship,
    required final bool verified,
  }) = _$ParentStudentLinkImpl;

  factory _ParentStudentLink.fromJson(Map<String, dynamic> json) =
      _$ParentStudentLinkImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'parent_id')
  String get parentId;
  @override
  @JsonKey(name: 'student_id')
  String get studentId;
  @override
  String get relationship;
  @override
  bool get verified;

  /// Create a copy of ParentStudentLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParentStudentLinkImplCopyWith<_$ParentStudentLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
