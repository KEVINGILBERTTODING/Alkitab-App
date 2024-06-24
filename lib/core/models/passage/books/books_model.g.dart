// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BooksModelImpl _$$BooksModelImplFromJson(Map<String, dynamic> json) =>
    _$BooksModelImpl(
      name: json['name'] as String?,
      book_id: json['book_id'] as String?,
      title: json['title'] as String?,
      chapter: json['chapter'] == null
          ? null
          : ChapterModel.fromJson(json['chapter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BooksModelImplToJson(_$BooksModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'book_id': instance.book_id,
      'title': instance.title,
      'chapter': instance.chapter,
    };
