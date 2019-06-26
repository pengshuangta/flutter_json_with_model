/*
**  字典嵌套字典
*/

// 最内层的模型类
class PropertyModel{
  double width;
  double breadth;
  PropertyModel({
    this.width,
    this.breadth,
  });
  // 工程方法
  factory PropertyModel.fromJson(Map<String,dynamic> prasedJson){
    return PropertyModel(
      width: prasedJson['width'],
      breadth: prasedJson['breadth'],
    );
  }
}
// 外层模型类
class ShapeModel{
  String shapeName;
  PropertyModel property;
  ShapeModel({
    this.shapeName,
    this.property,
  });
  // 工厂方法
  factory ShapeModel.fromJson(Map<String,dynamic>prasedJson){
    return ShapeModel(
      shapeName: prasedJson['shape_name'],
      property: PropertyModel.fromJson(prasedJson['property']),
    );
  }
}
