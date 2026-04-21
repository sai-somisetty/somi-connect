// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nudge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Nudge _$NudgeFromJson(Map<String, dynamic> json) {
  return _Nudge.fromJson(json);
}

/// @nodoc
mixin _$Nudge {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  String get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'nudge_type')
  String get nudgeType => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_read')
  bool get isRead => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Nudge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Nudge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NudgeCopyWith<Nudge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NudgeCopyWith<$Res> {
  factory $NudgeCopyWith(Nudge value, $Res Function(Nudge) then) =
      _$NudgeCopyWithImpl<$Res, Nudge>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'parent_id') String parentId,
    @JsonKey(name: 'student_id') String studentId,
    @JsonKey(name: 'nudge_type') String nudgeType,
    String title,
    String body,
    String priority,
    @JsonKey(name: 'is_read') bool isRead,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class _$NudgeCopyWithImpl<$Res, $Val extends Nudge>
    implements $NudgeCopyWith<$Res> {
  _$NudgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Nudge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? studentId = null,
    Object? nudgeType = null,
    Object? title = null,
    Object? body = null,
    Object? priority = null,
    Object? isRead = null,
    Object? createdAt = freezed,
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
            nudgeType: null == nudgeType
                ? _value.nudgeType
                : nudgeType // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            body: null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String,
            priority: null == priority
                ? _value.priority
                : priority // ignore: cast_nullable_to_non_nullable
                      as String,
            isRead: null == isRead
                ? _value.isRead
                : isRead // ignore: cast_nullable_to_non_nullable
                      as bool,
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
abstract class _$$NudgeImplCopyWith<$Res> implements $NudgeCopyWith<$Res> {
  factory _$$NudgeImplCopyWith(
    _$NudgeImpl value,
    $Res Function(_$NudgeImpl) then,
  ) = __$$NudgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'parent_id') String parentId,
    @JsonKey(name: 'student_id') String studentId,
    @JsonKey(name: 'nudge_type') String nudgeType,
    String title,
    String body,
    String priority,
    @JsonKey(name: 'is_read') bool isRead,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class __$$NudgeImplCopyWithImpl<$Res>
    extends _$NudgeCopyWithImpl<$Res, _$NudgeImpl>
    implements _$$NudgeImplCopyWith<$Res> {
  __$$NudgeImplCopyWithImpl(
    _$NudgeImpl _value,
    $Res Function(_$NudgeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Nudge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? studentId = null,
    Object? nudgeType = null,
    Object? title = null,
    Object? body = null,
    Object? priority = null,
    Object? isRead = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$NudgeImpl(
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
        nudgeType: null == nudgeType
            ? _value.nudgeType
            : nudgeType // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        body: null == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
        priority: null == priority
            ? _value.priority
            : priority // ignore: cast_nullable_to_non_nullable
                  as String,
        isRead: null == isRead
            ? _value.isRead
            : isRead // ignore: cast_nullable_to_non_nullable
                  as bool,
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
class _$NudgeImpl implements _Nudge {
  const _$NudgeImpl({
    required this.id,
    @JsonKey(name: 'parent_id') required this.parentId,
    @JsonKey(name: 'student_id') required this.studentId,
    @JsonKey(name: 'nudge_type') required this.nudgeType,
    required this.title,
    required this.body,
    required this.priority,
    @JsonKey(name: 'is_read') required this.isRead,
    @JsonKey(name: 'created_at') this.createdAt,
  });

  factory _$NudgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$NudgeImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'parent_id')
  final String parentId;
  @override
  @JsonKey(name: 'student_id')
  final String studentId;
  @override
  @JsonKey(name: 'nudge_type')
  final String nudgeType;
  @override
  final String title;
  @override
  final String body;
  @override
  final String priority;
  @override
  @JsonKey(name: 'is_read')
  final bool isRead;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Nudge(id: $id, parentId: $parentId, studentId: $studentId, nudgeType: $nudgeType, title: $title, body: $body, priority: $priority, isRead: $isRead, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NudgeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.nudgeType, nudgeType) ||
                other.nudgeType == nudgeType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    parentId,
    studentId,
    nudgeType,
    title,
    body,
    priority,
    isRead,
    createdAt,
  );

  /// Create a copy of Nudge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NudgeImplCopyWith<_$NudgeImpl> get copyWith =>
      __$$NudgeImplCopyWithImpl<_$NudgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NudgeImplToJson(this);
  }
}

abstract class _Nudge implements Nudge {
  const factory _Nudge({
    required final String id,
    @JsonKey(name: 'parent_id') required final String parentId,
    @JsonKey(name: 'student_id') required final String studentId,
    @JsonKey(name: 'nudge_type') required final String nudgeType,
    required final String title,
    required final String body,
    required final String priority,
    @JsonKey(name: 'is_read') required final bool isRead,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
  }) = _$NudgeImpl;

  factory _Nudge.fromJson(Map<String, dynamic> json) = _$NudgeImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'parent_id')
  String get parentId;
  @override
  @JsonKey(name: 'student_id')
  String get studentId;
  @override
  @JsonKey(name: 'nudge_type')
  String get nudgeType;
  @override
  String get title;
  @override
  String get body;
  @override
  String get priority;
  @override
  @JsonKey(name: 'is_read')
  bool get isRead;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of Nudge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NudgeImplCopyWith<_$NudgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
