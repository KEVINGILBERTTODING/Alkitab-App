// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bibles_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BiblesModelImpl _$$BiblesModelImplFromJson(Map<String, dynamic> json) =>
    _$BiblesModelImpl(
      title: json['title'] as String?,
      book: json['book'] == null
          ? null
          : BooksModel.fromJson(json['book'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BiblesModelImplToJson(_$BiblesModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'book': instance.book,
    };
