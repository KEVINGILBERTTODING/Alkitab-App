// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verses_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VersesModel _$VersesModelFromJson(Map<String, dynamic> json) {
  return _VersesModel.fromJson(json);
}

/// @nodoc
mixin _$VersesModel {
  String? get number => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersesModelCopyWith<VersesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersesModelCopyWith<$Res> {
  factory $VersesModelCopyWith(
          VersesModel value, $Res Function(VersesModel) then) =
      _$VersesModelCopyWithImpl<$Res, VersesModel>;
  @useResult
  $Res call({String? number, String? title, String? text});
}

/// @nodoc
class _$VersesModelCopyWithImpl<$Res, $Val extends VersesModel>
    implements $VersesModelCopyWith<$Res> {
  _$VersesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? title = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VersesModelImplCopyWith<$Res>
    implements $VersesModelCopyWith<$Res> {
  factory _$$VersesModelImplCopyWith(
          _$VersesModelImpl value, $Res Function(_$VersesModelImpl) then) =
      __$$VersesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? number, String? title, String? text});
}

/// @nodoc
class __$$VersesModelImplCopyWithImpl<$Res>
    extends _$VersesModelCopyWithImpl<$Res, _$VersesModelImpl>
    implements _$$VersesModelImplCopyWith<$Res> {
  __$$VersesModelImplCopyWithImpl(
      _$VersesModelImpl _value, $Res Function(_$VersesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? title = freezed,
    Object? text = freezed,
  }) {
    return _then(_$VersesModelImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VersesModelImpl implements _VersesModel {
  const _$VersesModelImpl({this.number, this.title, this.text});

  factory _$VersesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersesModelImplFromJson(json);

  @override
  final String? number;
  @override
  final String? title;
  @override
  final String? text;

  @override
  String toString() {
    return 'VersesModel(number: $number, title: $title, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersesModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, title, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VersesModelImplCopyWith<_$VersesModelImpl> get copyWith =>
      __$$VersesModelImplCopyWithImpl<_$VersesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersesModelImplToJson(
      this,
    );
  }
}

abstract class _VersesModel implements VersesModel {
  const factory _VersesModel(
      {final String? number,
      final String? title,
      final String? text}) = _$VersesModelImpl;

  factory _VersesModel.fromJson(Map<String, dynamic> json) =
      _$VersesModelImpl.fromJson;

  @override
  String? get number;
  @override
  String? get title;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$VersesModelImplCopyWith<_$VersesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
