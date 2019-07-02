import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_json_demo/json_serializable_model/js_data_model.dart';
import 'dart:convert';
import 'dart:async' show Future;

Future<String>_loadAssets() async{
  return await rootBundle.loadString('assets/data.json');
}
Future loadJSDataModel() async{
  String jsonString = await _loadAssets();
  final jsonResponse = json.decode(jsonString);
  JSDataModel model = JSDataModel.fromJson(jsonResponse);
  print(model.kids[1]);
  print(model.by);
}