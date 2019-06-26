import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_json_demo/model/page_model.dart';

Future<String> _loadAssetsPageModel() async{
  return await rootBundle.loadString('assets/page.json');
}

Future loadPageModel() async{
  String parsedJson = await _loadAssetsPageModel();
  final responseJson = json.decode(parsedJson);
  PageModel model = PageModel.fromJson(responseJson);
  print(model);
}