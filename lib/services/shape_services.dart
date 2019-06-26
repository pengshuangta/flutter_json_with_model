import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_json_demo/model/shape_model.dart';
import 'package:flutter_json_demo/services/shape_services.dart';

// 获取json数据源
Future<String> _loadShapeModelAssets() async{
  return await rootBundle.loadString('assets/shape.json');
}

Future loadShapeModel() async{
  // 获取数据源
  String assetsJson = await _loadShapeModelAssets();
  // 数据源转json
  final responseJson = json.decode(assetsJson);
  ShapeModel model = ShapeModel.fromJson(responseJson);
  print(model.shapeName);
  print(model.property.breadth);
}