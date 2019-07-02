import 'dart:async' show Future;// show 导入库中的future部分的功能
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter_json_demo/model/student_model.dart';

// 异步得到数据对像i/o时需要用async
Future<String> _loadStudentModelAsset() async{
  return await rootBundle.loadString('assets/student.json');
}

Future loadStudentModel() async{
  String jsonString = await _loadStudentModelAsset();
  final jsonResponse = json.decode(jsonString);
  StudentModel model = StudentModel.fromJson(jsonResponse);
  print(model.name + model.id + " " + model.score.toString());
}
