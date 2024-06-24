import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yesheis/core/models/passage/bible/bibles_model.dart';

part 'headers_model.freezed.dart';
part 'headers_model.g.dart';

@freezed
class HeadersModel with _$HeadersModel {
  const factory HeadersModel({BiblesModel? bible}) = _Headers_model;
  factory HeadersModel.fromJson(Map<String, dynamic> json) =>
      _$HeadersModelFromJson(json);
}
