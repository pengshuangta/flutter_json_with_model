// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'js_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JSDataModel _$JSDataModelFromJson(Map<String, dynamic> json) {
  return JSDataModel(
      by: json['by'] as String,
      id: json['id'] as int,
      kids: (json['kids'] as List)?.map((e) => e as int)?.toList(),
      score: json['score'] as int,
      title: json['title'] as String,
      type: json['type'] as String,
      url: json['url'] as String,
      time: json['time'] as int)
    ..descnedants = json['descnedants'] as int;
}

Map<String, dynamic> _$JSDataModelToJson(JSDataModel instance) =>
    <String, dynamic>{
      'by': instance.by,
      'descnedants': instance.descnedants,
      'id': instance.id,
      'kids': instance.kids,
      'score': instance.score,
      'time': instance.time,
      'title': instance.title,
      'type': instance.type,
      'url': instance.url
    };
