import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yesheis/core/models/passage/books/books_model.dart';

part 'bibles_model.freezed.dart';
part 'bibles_model.g.dart';

@freezed
class BiblesModel with _$BiblesModel {
  const factory BiblesModel({String? title, BooksModel? book}) = _BiblesModel;

  factory BiblesModel.fromJson(Map<String, dynamic> json) =>
      _$BiblesModelFromJson(json);
}
