// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'concept_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ConceptProgress _$ConceptProgressFromJson(Map<String, dynamic> json) {
  return _ConceptProgress.fromJson(json);
}

/// @nodoc
mixin _$ConceptProgress {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  String get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'concept_name')
  String get conceptName => throw _privateConstructorUsedError;
  @JsonKey(name: 'progress_percent')
  double get progressPercent => throw _privateConstructorUsedError;

  /// Serializes this ConceptProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConceptProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConceptProgressCopyWith<ConceptProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConceptProgressCopyWith<$Res> {
  factory $ConceptProgressCopyWith(
    ConceptProgress value,
    $Res Function(ConceptProgress) then,
  ) = _$ConceptProgressCopyWithImpl<$Res, ConceptProgress>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'student_id') String studentId,
    @JsonKey(name: 'concept_name') String conceptName,
    @JsonKey(name: 'progress_percent') double progressPercent,
  });
}

/// @nodoc
class _$ConceptProgressCopyWithImpl<$Res, $Val extends ConceptProgress>
    implements $ConceptProgressCopyWith<$Res> {
  _$ConceptProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConceptProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? conceptName = null,
    Object? progressPercent = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as String,
            conceptName: null == conceptName
                ? _value.conceptName
                : conceptName // ignore: cast_nullable_to_non_nullable
                      as String,
            progressPercent: null == progressPercent
                ? _value.progressPercent
                : progressPercent // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConceptProgressImplCopyWith<$Res>
    implements $ConceptProgressCopyWith<$Res> {
  factory _$$ConceptProgressImplCopyWith(
    _$ConceptProgressImpl value,
    $Res Function(_$ConceptProgressImpl) then,
  ) = __$$ConceptProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'student_id') String studentId,
    @JsonKey(name: 'concept_name') String conceptName,
    @JsonKey(name: 'progress_percent') double progressPercent,
  });
}

/// @nodoc
class __$$ConceptProgressImplCopyWithImpl<$Res>
    extends _$ConceptProgressCopyWithImpl<$Res, _$ConceptProgressImpl>
    implements _$$ConceptProgressImplCopyWith<$Res> {
  __$$ConceptProgressImplCopyWithImpl(
    _$ConceptProgressImpl _value,
    $Res Function(_$ConceptProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConceptProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? conceptName = null,
    Object? progressPercent = null,
  }) {
    return _then(
      _$ConceptProgressImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String,
        conceptName: null == conceptName
            ? _value.conceptName
            : conceptName // ignore: cast_nullable_to_non_nullable
                  as String,
        progressPercent: null == progressPercent
            ? _value.progressPercent
            : progressPercent // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ConceptProgressImpl implements _ConceptProgress {
  const _$ConceptProgressImpl({
    required this.id,
    @JsonKey(name: 'student_id') required this.studentId,
    @JsonKey(name: 'concept_name') required this.conceptName,
    @JsonKey(name: 'progress_percent') required this.progressPercent,
  });

  factory _$ConceptProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConceptProgressImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'student_id')
  final String studentId;
  @override
  @JsonKey(name: 'concept_name')
  final String conceptName;
  @override
  @JsonKey(name: 'progress_percent')
  final double progressPercent;

  @override
  String toString() {
    return 'ConceptProgress(id: $id, studentId: $studentId, conceptName: $conceptName, progressPercent: $progressPercent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConceptProgressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.conceptName, conceptName) ||
                other.conceptName == conceptName) &&
            (identical(other.progressPercent, progressPercent) ||
                other.progressPercent == progressPercent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, studentId, conceptName, progressPercent);

  /// Create a copy of ConceptProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConceptProgressImplCopyWith<_$ConceptProgressImpl> get copyWith =>
      __$$ConceptProgressImplCopyWithImpl<_$ConceptProgressImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ConceptProgressImplToJson(this);
  }
}

abstract class _ConceptProgress implements ConceptProgress {
  const factory _ConceptProgress({
    required final String id,
    @JsonKey(name: 'student_id') required final String studentId,
    @JsonKey(name: 'concept_name') required final String conceptName,
    @JsonKey(name: 'progress_percent') required final double progressPercent,
  }) = _$ConceptProgressImpl;

  factory _ConceptProgress.fromJson(Map<String, dynamic> json) =
      _$ConceptProgressImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'student_id')
  String get studentId;
  @override
  @JsonKey(name: 'concept_name')
  String get conceptName;
  @override
  @JsonKey(name: 'progress_percent')
  double get progressPercent;

  /// Create a copy of ConceptProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConceptProgressImplCopyWith<_$ConceptProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
