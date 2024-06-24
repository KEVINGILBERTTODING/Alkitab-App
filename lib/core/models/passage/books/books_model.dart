import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yesheis/core/models/passage/chapter/chapter_model.dart';

part 'books_model.freezed.dart';
part 'books_model.g.dart';

@freezed
class BooksModel with _$BooksModel {
  const factory BooksModel({
    String? name,
    String? book_id,
    String? title,
    ChapterModel? chapter,
  }) = _BooksModel;

  factory BooksModel.fromJson(Map<String, dynamic> json) =>
      _$BooksModelFromJson(json);
}
