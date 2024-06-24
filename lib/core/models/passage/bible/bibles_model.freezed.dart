// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bibles_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BiblesModel _$BiblesModelFromJson(Map<String, dynamic> json) {
  return _BiblesModel.fromJson(json);
}

/// @nodoc
mixin _$BiblesModel {
  String? get title => throw _privateConstructorUsedError;
  BooksModel? get book => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BiblesModelCopyWith<BiblesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiblesModelCopyWith<$Res> {
  factory $BiblesModelCopyWith(
          BiblesModel value, $Res Function(BiblesModel) then) =
      _$BiblesModelCopyWithImpl<$Res, BiblesModel>;
  @useResult
  $Res call({String? title, BooksModel? book});

  $BooksModelCopyWith<$Res>? get book;
}

/// @nodoc
class _$BiblesModelCopyWithImpl<$Res, $Val extends BiblesModel>
    implements $BiblesModelCopyWith<$Res> {
  _$BiblesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? book = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BooksModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BooksModelCopyWith<$Res>? get book {
    if (_value.book == null) {
      return null;
    }

    return $BooksModelCopyWith<$Res>(_value.book!, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BiblesModelImplCopyWith<$Res>
    implements $BiblesModelCopyWith<$Res> {
  factory _$$BiblesModelImplCopyWith(
          _$BiblesModelImpl value, $Res Function(_$BiblesModelImpl) then) =
      __$$BiblesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, BooksModel? book});

  @override
  $BooksModelCopyWith<$Res>? get book;
}

/// @nodoc
class __$$BiblesModelImplCopyWithImpl<$Res>
    extends _$BiblesModelCopyWithImpl<$Res, _$BiblesModelImpl>
    implements _$$BiblesModelImplCopyWith<$Res> {
  __$$BiblesModelImplCopyWithImpl(
      _$BiblesModelImpl _value, $Res Function(_$BiblesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? book = freezed,
  }) {
    return _then(_$BiblesModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BooksModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiblesModelImpl implements _BiblesModel {
  const _$BiblesModelImpl({this.title, this.book});

  factory _$BiblesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiblesModelImplFromJson(json);

  @override
  final String? title;
  @override
  final BooksModel? book;

  @override
  String toString() {
    return 'BiblesModel(title: $title, book: $book)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiblesModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.book, book) || other.book == book));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, book);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BiblesModelImplCopyWith<_$BiblesModelImpl> get copyWith =>
      __$$BiblesModelImplCopyWithImpl<_$BiblesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiblesModelImplToJson(
      this,
    );
  }
}

abstract class _BiblesModel implements BiblesModel {
  const factory _BiblesModel({final String? title, final BooksModel? book}) =
      _$BiblesModelImpl;

  factory _BiblesModel.fromJson(Map<String, dynamic> json) =
      _$BiblesModelImpl.fromJson;

  @override
  String? get title;
  @override
  BooksModel? get book;
  @override
  @JsonKey(ignore: true)
  _$$BiblesModelImplCopyWith<_$BiblesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
