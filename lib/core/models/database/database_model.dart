import 'package:freezed_annotation/freezed_annotation.dart';

part 'database_model.g.dart';
part 'database_model.freezed.dart';

@freezed
class DatabaseModel with _$DatabaseModel {
  const factory DatabaseModel({
    String? id,
    String? abbr_verse,
    String? text,
  }) = _DatabaseModel;

  factory DatabaseModel.fromJson(Map<String, dynamic> json) =>
      _$DatabaseModelFromJson(json);
}
