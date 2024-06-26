// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'database_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DatabaseModel _$DatabaseModelFromJson(Map<String, dynamic> json) {
  return _DatabaseModel.fromJson(json);
}

/// @nodoc
mixin _$DatabaseModel {
  String? get id => throw _privateConstructorUsedError;
  String? get abbr_verse => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatabaseModelCopyWith<DatabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseModelCopyWith<$Res> {
  factory $DatabaseModelCopyWith(
          DatabaseModel value, $Res Function(DatabaseModel) then) =
      _$DatabaseModelCopyWithImpl<$Res, DatabaseModel>;
  @useResult
  $Res call({String? id, String? abbr_verse, String? text});
}

/// @nodoc
class _$DatabaseModelCopyWithImpl<$Res, $Val extends DatabaseModel>
    implements $DatabaseModelCopyWith<$Res> {
  _$DatabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? abbr_verse = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      abbr_verse: freezed == abbr_verse
          ? _value.abbr_verse
          : abbr_verse // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatabaseModelImplCopyWith<$Res>
    implements $DatabaseModelCopyWith<$Res> {
  factory _$$DatabaseModelImplCopyWith(
          _$DatabaseModelImpl value, $Res Function(_$DatabaseModelImpl) then) =
      __$$DatabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? abbr_verse, String? text});
}

/// @nodoc
class __$$DatabaseModelImplCopyWithImpl<$Res>
    extends _$DatabaseModelCopyWithImpl<$Res, _$DatabaseModelImpl>
    implements _$$DatabaseModelImplCopyWith<$Res> {
  __$$DatabaseModelImplCopyWithImpl(
      _$DatabaseModelImpl _value, $Res Function(_$DatabaseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? abbr_verse = freezed,
    Object? text = freezed,
  }) {
    return _then(_$DatabaseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      abbr_verse: freezed == abbr_verse
          ? _value.abbr_verse
          : abbr_verse // ignore: cast_nullable_to_non_nullable
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
class _$DatabaseModelImpl implements _DatabaseModel {
  const _$DatabaseModelImpl({this.id, this.abbr_verse, this.text});

  factory _$DatabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatabaseModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? abbr_verse;
  @override
  final String? text;

  @override
  String toString() {
    return 'DatabaseModel(id: $id, abbr_verse: $abbr_verse, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.abbr_verse, abbr_verse) ||
                other.abbr_verse == abbr_verse) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, abbr_verse, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabaseModelImplCopyWith<_$DatabaseModelImpl> get copyWith =>
      __$$DatabaseModelImplCopyWithImpl<_$DatabaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatabaseModelImplToJson(
      this,
    );
  }
}

abstract class _DatabaseModel implements DatabaseModel {
  const factory _DatabaseModel(
      {final String? id,
      final String? abbr_verse,
      final String? text}) = _$DatabaseModelImpl;

  factory _DatabaseModel.fromJson(Map<String, dynamic> json) =
      _$DatabaseModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get abbr_verse;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$DatabaseModelImplCopyWith<_$DatabaseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
