import 'package:freezed_annotation/freezed_annotation.dart';

part 'verses_model.freezed.dart';
part 'verses_model.g.dart';

@freezed
class VersesModel with _$VersesModel {
  const factory VersesModel({
    String? number,
    String? title,
    String? text,
  }) = _VersesModel;

  factory VersesModel.fromJson(Map<String, dynamic> json) =>
      _$VersesModelFromJson(json);
}
