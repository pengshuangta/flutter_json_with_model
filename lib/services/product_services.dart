import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_json_demo/model/product_model.dart';
import 'package:flutter_json_demo/services/product_services.dart';

Future<String> _loadAssetsProductModel() async{
  return await rootBundle.loadString('assets/product.json');
}

Future loadProductModel()async{
  // 数据源
  String prasedJson = await _loadAssetsProductModel();
  // 序列号
  final responseJson = json.decode(prasedJson);
  ProductModel model = ProductModel.fromJson(responseJson);
  print(model.images);
  print(model.id);
  
}