// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChapterModel _$ChapterModelFromJson(Map<String, dynamic> json) {
  return _ChapterModel.fromJson(json);
}

/// @nodoc
mixin _$ChapterModel {
  String? get chap => throw _privateConstructorUsedError;
  List<VersesModel>? get verses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterModelCopyWith<ChapterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterModelCopyWith<$Res> {
  factory $ChapterModelCopyWith(
          ChapterModel value, $Res Function(ChapterModel) then) =
      _$ChapterModelCopyWithImpl<$Res, ChapterModel>;
  @useResult
  $Res call({String? chap, List<VersesModel>? verses});
}

/// @nodoc
class _$ChapterModelCopyWithImpl<$Res, $Val extends ChapterModel>
    implements $ChapterModelCopyWith<$Res> {
  _$ChapterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chap = freezed,
    Object? verses = freezed,
  }) {
    return _then(_value.copyWith(
      chap: freezed == chap
          ? _value.chap
          : chap // ignore: cast_nullable_to_non_nullable
              as String?,
      verses: freezed == verses
          ? _value.verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<VersesModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterModelImplCopyWith<$Res>
    implements $ChapterModelCopyWith<$Res> {
  factory _$$ChapterModelImplCopyWith(
          _$ChapterModelImpl value, $Res Function(_$ChapterModelImpl) then) =
      __$$ChapterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? chap, List<VersesModel>? verses});
}

/// @nodoc
class __$$ChapterModelImplCopyWithImpl<$Res>
    extends _$ChapterModelCopyWithImpl<$Res, _$ChapterModelImpl>
    implements _$$ChapterModelImplCopyWith<$Res> {
  __$$ChapterModelImplCopyWithImpl(
      _$ChapterModelImpl _value, $Res Function(_$ChapterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chap = freezed,
    Object? verses = freezed,
  }) {
    return _then(_$ChapterModelImpl(
      chap: freezed == chap
          ? _value.chap
          : chap // ignore: cast_nullable_to_non_nullable
              as String?,
      verses: freezed == verses
          ? _value._verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<VersesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterModelImpl implements _ChapterModel {
  const _$ChapterModelImpl({this.chap, final List<VersesModel>? verses})
      : _verses = verses;

  factory _$ChapterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterModelImplFromJson(json);

  @override
  final String? chap;
  final List<VersesModel>? _verses;
  @override
  List<VersesModel>? get verses {
    final value = _verses;
    if (value == null) return null;
    if (_verses is EqualUnmodifiableListView) return _verses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChapterModel(chap: $chap, verses: $verses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterModelImpl &&
            (identical(other.chap, chap) || other.chap == chap) &&
            const DeepCollectionEquality().equals(other._verses, _verses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, chap, const DeepCollectionEquality().hash(_verses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterModelImplCopyWith<_$ChapterModelImpl> get copyWith =>
      __$$ChapterModelImplCopyWithImpl<_$ChapterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterModelImplToJson(
      this,
    );
  }
}

abstract class _ChapterModel implements ChapterModel {
  const factory _ChapterModel(
      {final String? chap,
      final List<VersesModel>? verses}) = _$ChapterModelImpl;

  factory _ChapterModel.fromJson(Map<String, dynamic> json) =
      _$ChapterModelImpl.fromJson;

  @override
  String? get chap;
  @override
  List<VersesModel>? get verses;
  @override
  @JsonKey(ignore: true)
  _$$ChapterModelImplCopyWith<_$ChapterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
