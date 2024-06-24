// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'headers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Headers_modelImpl _$$Headers_modelImplFromJson(Map<String, dynamic> json) =>
    _$Headers_modelImpl(
      bible: json['bible'] == null
          ? null
          : BiblesModel.fromJson(json['bible'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$Headers_modelImplToJson(_$Headers_modelImpl instance) =>
    <String, dynamic>{
      'bible': instance.bible,
    };
