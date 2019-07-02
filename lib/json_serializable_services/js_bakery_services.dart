import 'dart:convert';
import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_json_demo/json_serializable_model/js_bakery_model.dart';

Future<String> _loadAssets() async{
  return await rootBundle.loadString('assets/bakery.json');
}
Future loadJSBakeryModel() async{
  String jsonParsed = await _loadAssets();
  final responseJons = json.decode(jsonParsed);
  JsBakeryModel model = JsBakeryModel.fromJson(responseJons);
  print(model.batters.type);
  print(model.id);
}