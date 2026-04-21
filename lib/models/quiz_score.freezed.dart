// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

QuizScore _$QuizScoreFromJson(Map<String, dynamic> json) {
  return _QuizScore.fromJson(json);
}

/// @nodoc
mixin _$QuizScore {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  String get studentId => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  String? get chapter => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this QuizScore to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizScoreCopyWith<QuizScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizScoreCopyWith<$Res> {
  factory $QuizScoreCopyWith(QuizScore value, $Res Function(QuizScore) then) =
      _$QuizScoreCopyWithImpl<$Res, QuizScore>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'student_id') String studentId,
    int? score,
    int? total,
    String? chapter,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class _$QuizScoreCopyWithImpl<$Res, $Val extends QuizScore>
    implements $QuizScoreCopyWith<$Res> {
  _$QuizScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? score = freezed,
    Object? total = freezed,
    Object? chapter = freezed,
    Object? createdAt = freezed,
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
            score: freezed == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int?,
            total: freezed == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int?,
            chapter: freezed == chapter
                ? _value.chapter
                : chapter // ignore: cast_nullable_to_non_nullable
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
abstract class _$$QuizScoreImplCopyWith<$Res>
    implements $QuizScoreCopyWith<$Res> {
  factory _$$QuizScoreImplCopyWith(
    _$QuizScoreImpl value,
    $Res Function(_$QuizScoreImpl) then,
  ) = __$$QuizScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'student_id') String studentId,
    int? score,
    int? total,
    String? chapter,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class __$$QuizScoreImplCopyWithImpl<$Res>
    extends _$QuizScoreCopyWithImpl<$Res, _$QuizScoreImpl>
    implements _$$QuizScoreImplCopyWith<$Res> {
  __$$QuizScoreImplCopyWithImpl(
    _$QuizScoreImpl _value,
    $Res Function(_$QuizScoreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? score = freezed,
    Object? total = freezed,
    Object? chapter = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$QuizScoreImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String,
        score: freezed == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int?,
        total: freezed == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int?,
        chapter: freezed == chapter
            ? _value.chapter
            : chapter // ignore: cast_nullable_to_non_nullable
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
class _$QuizScoreImpl implements _QuizScore {
  const _$QuizScoreImpl({
    required this.id,
    @JsonKey(name: 'student_id') required this.studentId,
    this.score,
    this.total,
    this.chapter,
    @JsonKey(name: 'created_at') this.createdAt,
  });

  factory _$QuizScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizScoreImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'student_id')
  final String studentId;
  @override
  final int? score;
  @override
  final int? total;
  @override
  final String? chapter;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'QuizScore(id: $id, studentId: $studentId, score: $score, total: $total, chapter: $chapter, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizScoreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, studentId, score, total, chapter, createdAt);

  /// Create a copy of QuizScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizScoreImplCopyWith<_$QuizScoreImpl> get copyWith =>
      __$$QuizScoreImplCopyWithImpl<_$QuizScoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizScoreImplToJson(this);
  }
}

abstract class _QuizScore implements QuizScore {
  const factory _QuizScore({
    required final String id,
    @JsonKey(name: 'student_id') required final String studentId,
    final int? score,
    final int? total,
    final String? chapter,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
  }) = _$QuizScoreImpl;

  factory _QuizScore.fromJson(Map<String, dynamic> json) =
      _$QuizScoreImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'student_id')
  String get studentId;
  @override
  int? get score;
  @override
  int? get total;
  @override
  String? get chapter;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of QuizScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizScoreImplCopyWith<_$QuizScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
