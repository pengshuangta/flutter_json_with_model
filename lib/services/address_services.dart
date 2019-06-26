import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_json_demo/model/address_model.dart';
import 'package:flutter_json_demo/model/student_model.dart';
import 'package:flutter_json_demo/services/address_services.dart';

Future<String> _loadAssetAddressModel() async{
  return await rootBundle.loadString('assets/address.json');
}

Future loadAddressModel() async{
  String parserdJson = await _loadAssetAddressModel();// 获取字符串
  final map  = json.decode(parserdJson);// 反序列化
  AddressModel model = AddressModel.fromJson(map);
  print(model.city + model.streets[1]);

}