/*
**  字典嵌套数组，数组元素为字典
*/

class ImagesModel{
  int id;
  String imageName;
  ImagesModel({
    this.id,
    this.imageName,
  });
  // 工厂方法
  factory ImagesModel.fromJson(Map<String,dynamic> prasedJson){
    return ImagesModel(
      id: prasedJson['id'],
      imageName: prasedJson['imageName'],
    );
  }
}

class ProductModel{
  int id;
  String name;
  List<ImagesModel> images;
  ProductModel({
    this.id,
    this.name,
    this.images,
  });
  // 工程方法
  factory ProductModel.fromJson(Map<String,dynamic>prasedJson){
    var list = prasedJson['images'] as List;
    List<ImagesModel> imagesModelList = list.map((i) => ImagesModel.fromJson(i)).toList();
    return ProductModel(
      id: prasedJson['id'],
      name: prasedJson['name'],
      images: imagesModelList,
    );
  }
}