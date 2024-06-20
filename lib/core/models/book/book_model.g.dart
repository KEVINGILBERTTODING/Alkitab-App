// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookModelImpl _$$BookModelImplFromJson(Map<String, dynamic> json) =>
    _$BookModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      abbr: json['abbr'] as String?,
      name: json['name'] as String?,
      chapter: (json['chapter'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$BookModelImplToJson(_$BookModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'abbr': instance.abbr,
      'name': instance.name,
      'chapter': instance.chapter,
    };
