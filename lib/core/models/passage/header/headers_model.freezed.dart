// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'headers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HeadersModel _$HeadersModelFromJson(Map<String, dynamic> json) {
  return _Headers_model.fromJson(json);
}

/// @nodoc
mixin _$HeadersModel {
  BiblesModel? get bible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeadersModelCopyWith<HeadersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeadersModelCopyWith<$Res> {
  factory $HeadersModelCopyWith(
          HeadersModel value, $Res Function(HeadersModel) then) =
      _$HeadersModelCopyWithImpl<$Res, HeadersModel>;
  @useResult
  $Res call({BiblesModel? bible});

  $BiblesModelCopyWith<$Res>? get bible;
}

/// @nodoc
class _$HeadersModelCopyWithImpl<$Res, $Val extends HeadersModel>
    implements $HeadersModelCopyWith<$Res> {
  _$HeadersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bible = freezed,
  }) {
    return _then(_value.copyWith(
      bible: freezed == bible
          ? _value.bible
          : bible // ignore: cast_nullable_to_non_nullable
              as BiblesModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BiblesModelCopyWith<$Res>? get bible {
    if (_value.bible == null) {
      return null;
    }

    return $BiblesModelCopyWith<$Res>(_value.bible!, (value) {
      return _then(_value.copyWith(bible: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Headers_modelImplCopyWith<$Res>
    implements $HeadersModelCopyWith<$Res> {
  factory _$$Headers_modelImplCopyWith(
          _$Headers_modelImpl value, $Res Function(_$Headers_modelImpl) then) =
      __$$Headers_modelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BiblesModel? bible});

  @override
  $BiblesModelCopyWith<$Res>? get bible;
}

/// @nodoc
class __$$Headers_modelImplCopyWithImpl<$Res>
    extends _$HeadersModelCopyWithImpl<$Res, _$Headers_modelImpl>
    implements _$$Headers_modelImplCopyWith<$Res> {
  __$$Headers_modelImplCopyWithImpl(
      _$Headers_modelImpl _value, $Res Function(_$Headers_modelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bible = freezed,
  }) {
    return _then(_$Headers_modelImpl(
      bible: freezed == bible
          ? _value.bible
          : bible // ignore: cast_nullable_to_non_nullable
              as BiblesModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Headers_modelImpl implements _Headers_model {
  const _$Headers_modelImpl({this.bible});

  factory _$Headers_modelImpl.fromJson(Map<String, dynamic> json) =>
      _$$Headers_modelImplFromJson(json);

  @override
  final BiblesModel? bible;

  @override
  String toString() {
    return 'HeadersModel(bible: $bible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Headers_modelImpl &&
            (identical(other.bible, bible) || other.bible == bible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Headers_modelImplCopyWith<_$Headers_modelImpl> get copyWith =>
      __$$Headers_modelImplCopyWithImpl<_$Headers_modelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Headers_modelImplToJson(
      this,
    );
  }
}

abstract class _Headers_model implements HeadersModel {
  const factory _Headers_model({final BiblesModel? bible}) =
      _$Headers_modelImpl;

  factory _Headers_model.fromJson(Map<String, dynamic> json) =
      _$Headers_modelImpl.fromJson;

  @override
  BiblesModel? get bible;
  @override
  @JsonKey(ignore: true)
  _$$Headers_modelImplCopyWith<_$Headers_modelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
