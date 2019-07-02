import 'package:json_annotation/json_annotation.dart';
part 'js_data_model.g.dart';
@JsonSerializable()
class JSDataModel{
  String by;
  int descnedants;
  int id;
  List<int> kids;
  int score;
  int time;
  String title;
  String type;
  String url;
  JSDataModel({
    this.by,
    this.id,
    this.kids,
    this.score,
    this.title,
    this.type,
    this.url,
    this.time,
  });
  // 反序列化
  factory JSDataModel.fromJson(Map<String,dynamic>json) =>_$JSDataModelFromJson(json);
  // 序列化
  Map<String,dynamic> toJson() => _$JSDataModelToJson(this);

}