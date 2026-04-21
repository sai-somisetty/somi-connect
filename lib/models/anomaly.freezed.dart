// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anomaly.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Anomaly _$AnomalyFromJson(Map<String, dynamic> json) {
  return _Anomaly.fromJson(json);
}

/// @nodoc
mixin _$Anomaly {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'exam_session_id')
  String get examSessionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  String get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'anomaly_type')
  String get anomalyType => throw _privateConstructorUsedError;
  String get severity => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Anomaly to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Anomaly
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnomalyCopyWith<Anomaly> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnomalyCopyWith<$Res> {
  factory $AnomalyCopyWith(Anomaly value, $Res Function(Anomaly) then) =
      _$AnomalyCopyWithImpl<$Res, Anomaly>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'exam_session_id') String examSessionId,
    @JsonKey(name: 'student_id') String studentId,
    @JsonKey(name: 'anomaly_type') String anomalyType,
    String severity,
    String? details,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class _$AnomalyCopyWithImpl<$Res, $Val extends Anomaly>
    implements $AnomalyCopyWith<$Res> {
  _$AnomalyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Anomaly
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? examSessionId = null,
    Object? studentId = null,
    Object? anomalyType = null,
    Object? severity = null,
    Object? details = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            examSessionId: null == examSessionId
                ? _value.examSessionId
                : examSessionId // ignore: cast_nullable_to_non_nullable
                      as String,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as String,
            anomalyType: null == anomalyType
                ? _value.anomalyType
                : anomalyType // ignore: cast_nullable_to_non_nullable
                      as String,
            severity: null == severity
                ? _value.severity
                : severity // ignore: cast_nullable_to_non_nullable
                      as String,
            details: freezed == details
                ? _value.details
                : details // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$AnomalyImplCopyWith<$Res> implements $AnomalyCopyWith<$Res> {
  factory _$$AnomalyImplCopyWith(
    _$AnomalyImpl value,
    $Res Function(_$AnomalyImpl) then,
  ) = __$$AnomalyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'exam_session_id') String examSessionId,
    @JsonKey(name: 'student_id') String studentId,
    @JsonKey(name: 'anomaly_type') String anomalyType,
    String severity,
    String? details,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class __$$AnomalyImplCopyWithImpl<$Res>
    extends _$AnomalyCopyWithImpl<$Res, _$AnomalyImpl>
    implements _$$AnomalyImplCopyWith<$Res> {
  __$$AnomalyImplCopyWithImpl(
    _$AnomalyImpl _value,
    $Res Function(_$AnomalyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Anomaly
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? examSessionId = null,
    Object? studentId = null,
    Object? anomalyType = null,
    Object? severity = null,
    Object? details = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$AnomalyImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        examSessionId: null == examSessionId
            ? _value.examSessionId
            : examSessionId // ignore: cast_nullable_to_non_nullable
                  as String,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String,
        anomalyType: null == anomalyType
            ? _value.anomalyType
            : anomalyType // ignore: cast_nullable_to_non_nullable
                  as String,
        severity: null == severity
            ? _value.severity
            : severity // ignore: cast_nullable_to_non_nullable
                  as String,
        details: freezed == details
            ? _value.details
            : details // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$AnomalyImpl implements _Anomaly {
  const _$AnomalyImpl({
    required this.id,
    @JsonKey(name: 'exam_session_id') required this.examSessionId,
    @JsonKey(name: 'student_id') required this.studentId,
    @JsonKey(name: 'anomaly_type') required this.anomalyType,
    required this.severity,
    this.details,
    @JsonKey(name: 'created_at') this.createdAt,
  });

  factory _$AnomalyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnomalyImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'exam_session_id')
  final String examSessionId;
  @override
  @JsonKey(name: 'student_id')
  final String studentId;
  @override
  @JsonKey(name: 'anomaly_type')
  final String anomalyType;
  @override
  final String severity;
  @override
  final String? details;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Anomaly(id: $id, examSessionId: $examSessionId, studentId: $studentId, anomalyType: $anomalyType, severity: $severity, details: $details, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnomalyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.examSessionId, examSessionId) ||
                other.examSessionId == examSessionId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.anomalyType, anomalyType) ||
                other.anomalyType == anomalyType) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    examSessionId,
    studentId,
    anomalyType,
    severity,
    details,
    createdAt,
  );

  /// Create a copy of Anomaly
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnomalyImplCopyWith<_$AnomalyImpl> get copyWith =>
      __$$AnomalyImplCopyWithImpl<_$AnomalyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnomalyImplToJson(this);
  }
}

abstract class _Anomaly implements Anomaly {
  const factory _Anomaly({
    required final String id,
    @JsonKey(name: 'exam_session_id') required final String examSessionId,
    @JsonKey(name: 'student_id') required final String studentId,
    @JsonKey(name: 'anomaly_type') required final String anomalyType,
    required final String severity,
    final String? details,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
  }) = _$AnomalyImpl;

  factory _Anomaly.fromJson(Map<String, dynamic> json) = _$AnomalyImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'exam_session_id')
  String get examSessionId;
  @override
  @JsonKey(name: 'student_id')
  String get studentId;
  @override
  @JsonKey(name: 'anomaly_type')
  String get anomalyType;
  @override
  String get severity;
  @override
  String? get details;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of Anomaly
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnomalyImplCopyWith<_$AnomalyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
