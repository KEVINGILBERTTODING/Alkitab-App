// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterModelImpl _$$ChapterModelImplFromJson(Map<String, dynamic> json) =>
    _$ChapterModelImpl(
      chap: json['chap'] as String?,
      verses: json['verses'] == null
          ? null
          : VersesModel.fromJson(json['verses'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChapterModelImplToJson(_$ChapterModelImpl instance) =>
    <String, dynamic>{
      'chap': instance.chap,
      'verses': instance.verses,
    };
