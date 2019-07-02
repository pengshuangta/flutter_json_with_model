// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'js_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsPageModel _$JsPageModelFromJson(Map<String, dynamic> json) {
  return JsPageModel(
      json['page'] as int,
      json['per_page'] as int,
      json['total'] as int,
      json['total_pages'] as int,
      json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
      (json['data'] as List)
          ?.map((e) =>
              e == null ? null : Data.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$JsPageModelToJson(JsPageModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'author': instance.author,
      'data': instance.data
    };

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return Author(json['first_name'] as String, json['last_name'] as String);
}

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
      json['id'] as int,
      json['first_name'] as String,
      json['last_name'] as String,
      json['avatar'] as String,
      (json['images'] as List)
          ?.map((e) =>
              e == null ? null : Images.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
      'images': instance.images
    };

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return Images(json['id'] as int, json['imageName'] as String);
}

Map<String, dynamic> _$ImagesToJson(Images instance) =>
    <String, dynamic>{'id': instance.id, 'imageName': instance.imageName};
