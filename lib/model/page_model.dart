/*
**  复杂类型嵌套原理：重最底层开始构造模型函数
*/

// image模型
class ImageModel{
  int id;
  String imageName;
  ImageModel({
    this.id,
    this.imageName,
  });
  factory ImageModel.fromJson(Map<String,dynamic> parsedJson){
    return ImageModel(
      id: parsedJson['id'],
      imageName: parsedJson['imageName'],
    );
  }
}
// data模型
class DataModel{
  int id;
  String firstName;
  String lastName;
  String avatar;
  List<ImageModel> images;
  DataModel({
    this.id,
    this.firstName,
    this.lastName,
    this.avatar,
    this.images,
  });
  factory DataModel.fromJson(Map<String,dynamic>parsedJson){
    var list = parsedJson['images'] as List;
    List<ImageModel> images = list.map((i)=>ImageModel.fromJson(i)).toList();
    return DataModel(
      id: parsedJson['id'],
      firstName: parsedJson['first_name'],
      lastName: parsedJson['last_name'],
      avatar: parsedJson['avatar'],
      images: images,
    );
  }
}
// author模型
class AuthorModel{
  String firstName;
  String lastName;
  AuthorModel({
    this.firstName,
    this.lastName,
  });
  factory AuthorModel.fromJson(Map<String,dynamic>parsedJson){
    return AuthorModel(
      firstName: parsedJson['first_name'],
      lastName: parsedJson['last_name'],
    );
  }
}
// page模型
class PageModel{
  int page;
  int perPage;
  int total;
  int totalPages;
  AuthorModel authorModel;
  List<DataModel> dateModel;
  PageModel({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.authorModel,
    this.dateModel,
  });
  factory PageModel.fromJson(Map<String,dynamic>parsedJson){
    var list = parsedJson['data'] as List;
    List<DataModel> datas = list.map((i)=>DataModel.fromJson(i)).toList();
    return PageModel(
      page: parsedJson['page'],
      perPage: parsedJson['per_page'],
      total: parsedJson['total'],
      totalPages: parsedJson['total_pages'],
      authorModel: AuthorModel.fromJson(parsedJson['author']),
      dateModel: datas,
    );
  }
}