// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BooksModel _$BooksModelFromJson(Map<String, dynamic> json) {
  return _BooksModel.fromJson(json);
}

/// @nodoc
mixin _$BooksModel {
  String? get name => throw _privateConstructorUsedError;
  String? get book_id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  ChapterModel? get chapter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BooksModelCopyWith<BooksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksModelCopyWith<$Res> {
  factory $BooksModelCopyWith(
          BooksModel value, $Res Function(BooksModel) then) =
      _$BooksModelCopyWithImpl<$Res, BooksModel>;
  @useResult
  $Res call(
      {String? name, String? book_id, String? title, ChapterModel? chapter});

  $ChapterModelCopyWith<$Res>? get chapter;
}

/// @nodoc
class _$BooksModelCopyWithImpl<$Res, $Val extends BooksModel>
    implements $BooksModelCopyWith<$Res> {
  _$BooksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? book_id = freezed,
    Object? title = freezed,
    Object? chapter = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      book_id: freezed == book_id
          ? _value.book_id
          : book_id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      chapter: freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as ChapterModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChapterModelCopyWith<$Res>? get chapter {
    if (_value.chapter == null) {
      return null;
    }

    return $ChapterModelCopyWith<$Res>(_value.chapter!, (value) {
      return _then(_value.copyWith(chapter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BooksModelImplCopyWith<$Res>
    implements $BooksModelCopyWith<$Res> {
  factory _$$BooksModelImplCopyWith(
          _$BooksModelImpl value, $Res Function(_$BooksModelImpl) then) =
      __$$BooksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name, String? book_id, String? title, ChapterModel? chapter});

  @override
  $ChapterModelCopyWith<$Res>? get chapter;
}

/// @nodoc
class __$$BooksModelImplCopyWithImpl<$Res>
    extends _$BooksModelCopyWithImpl<$Res, _$BooksModelImpl>
    implements _$$BooksModelImplCopyWith<$Res> {
  __$$BooksModelImplCopyWithImpl(
      _$BooksModelImpl _value, $Res Function(_$BooksModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? book_id = freezed,
    Object? title = freezed,
    Object? chapter = freezed,
  }) {
    return _then(_$BooksModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      book_id: freezed == book_id
          ? _value.book_id
          : book_id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      chapter: freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as ChapterModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BooksModelImpl implements _BooksModel {
  const _$BooksModelImpl({this.name, this.book_id, this.title, this.chapter});

  factory _$BooksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooksModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? book_id;
  @override
  final String? title;
  @override
  final ChapterModel? chapter;

  @override
  String toString() {
    return 'BooksModel(name: $name, book_id: $book_id, title: $title, chapter: $chapter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.book_id, book_id) || other.book_id == book_id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.chapter, chapter) || other.chapter == chapter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, book_id, title, chapter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksModelImplCopyWith<_$BooksModelImpl> get copyWith =>
      __$$BooksModelImplCopyWithImpl<_$BooksModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BooksModelImplToJson(
      this,
    );
  }
}

abstract class _BooksModel implements BooksModel {
  const factory _BooksModel(
      {final String? name,
      final String? book_id,
      final String? title,
      final ChapterModel? chapter}) = _$BooksModelImpl;

  factory _BooksModel.fromJson(Map<String, dynamic> json) =
      _$BooksModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get book_id;
  @override
  String? get title;
  @override
  ChapterModel? get chapter;
  @override
  @JsonKey(ignore: true)
  _$$BooksModelImplCopyWith<_$BooksModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
