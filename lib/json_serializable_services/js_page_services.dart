
import 'package:flutter/services.dart';
import 'dart:convert';

import 'package:flutter_json_demo/json_serializable_model/js_page_model.dart';

Future<String> _loadAssets() async{
  return await rootBundle.loadString('assets/page.json');
}
Future loadJSPageModel() async{
  String jsonString = await _loadAssets();
  final responseJson = json.decode(jsonString);
  JsPageModel model = JsPageModel.fromJson(responseJson);
  print(model);
}