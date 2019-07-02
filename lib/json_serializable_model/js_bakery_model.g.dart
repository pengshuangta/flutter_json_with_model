// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'js_bakery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsBakeryModel _$JsBakeryModelFromJson(Map<String, dynamic> json) {
  return JsBakeryModel(
      json['id'] as String,
      (json['type'] as List)?.map((e) => e as String)?.toList(),
      json['name'] as String,
      (json['ppu'] as num)?.toDouble(),
      json['batters'] == null
          ? null
          : Batters.fromJson(json['batters'] as Map<String, dynamic>));
}

Map<String, dynamic> _$JsBakeryModelToJson(JsBakeryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'ppu': instance.ppu,
      'batters': instance.batters
    };

Batters _$BattersFromJson(Map<String, dynamic> json) {
  return Batters(json['id'] as String, json['type'] as String);
}

Map<String, dynamic> _$BattersToJson(Batters instance) =>
    <String, dynamic>{'id': instance.id, 'type': instance.type};
