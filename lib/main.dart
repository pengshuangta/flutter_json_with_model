import 'package:flutter/material.dart';
import 'package:flutter_json_demo/services/student_services.dart';
import 'package:flutter_json_demo/services/address_services.dart';
import 'package:flutter_json_demo/services/product_services.dart';
import 'package:flutter_json_demo/services/photos_services.dart';
import 'package:flutter_json_demo/services/shape_services.dart';
import 'package:flutter_json_demo/services/page_services.dart';
// void main() => runApp(MyApp());
void main(){
  runApp(MyApp());
  // loadStudentModel();
  // loadAddressModel();
  // loadShapeModel();
  // loadProductModel();
  // loadPhotoListModel();
  loadPageModel();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
