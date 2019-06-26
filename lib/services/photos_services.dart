import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_json_demo/model/photos_model.dart';
import 'package:flutter_json_demo/services/photos_services.dart';

Future<String> _loadAssetsPhotoListModel() async{
  return await rootBundle.loadString('assets/photo.json');
}

Future loadPhotoListModel() async{
  // 数据源
  String prasedJson = await _loadAssetsPhotoListModel();
  // 序列化
  final responseJson = json.decode(prasedJson);
  // 转模型
  PhotoListModel model = PhotoListModel.fromJson(responseJson);
  PhotosModel photosModel = model.photos[0];
  print(photosModel.id);
}