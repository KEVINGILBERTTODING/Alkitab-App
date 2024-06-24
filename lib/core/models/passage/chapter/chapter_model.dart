import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yesheis/core/models/passage/verse/verses_model.dart';

part 'chapter_model.freezed.dart';
part 'chapter_model.g.dart';

@freezed
class ChapterModel with _$ChapterModel {
  const factory ChapterModel({
    String? chap,
    VersesModel? verses,
  }) = _ChapterModel;

  factory ChapterModel.fromJson(Map<String, dynamic> json) =>
      _$ChapterModelFromJson(json);
}
