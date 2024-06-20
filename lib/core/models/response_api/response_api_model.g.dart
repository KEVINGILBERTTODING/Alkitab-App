// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseApiModelImpl _$$ResponseApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseApiModelImpl(
      state: json['state'] as String? ?? "",
      message: json['message'] as String? ?? "",
      data: json['data'],
    );

Map<String, dynamic> _$$ResponseApiModelImplToJson(
        _$ResponseApiModelImpl instance) =>
    <String, dynamic>{
      'state': instance.state,
      'message': instance.message,
      'data': instance.data,
    };
