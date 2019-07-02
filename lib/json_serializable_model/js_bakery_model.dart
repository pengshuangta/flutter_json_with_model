import 'package:json_annotation/json_annotation.dart'; 
  
part 'js_bakery_model.g.dart';


@JsonSerializable()
  class JsBakeryModel extends Object {

  String id;

  List<String> type;

  String name;

  double ppu;

  Batters batters;

  JsBakeryModel(this.id,this.type,this.name,this.ppu,this.batters,);

  factory JsBakeryModel.fromJson(Map<String, dynamic> srcJson) => _$JsBakeryModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$JsBakeryModelToJson(this);

}

  
@JsonSerializable()
  class Batters extends Object {

  String id;

  String type;

  Batters(this.id,this.type,);

  factory Batters.fromJson(Map<String, dynamic> srcJson) => _$BattersFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BattersToJson(this);

}

  
