/*
**  map列表
*/
class PhotosModel {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;
  PhotosModel({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });
  // 工厂方法
  factory PhotosModel.fromJson(Map<String, dynamic> prasedJson) {
    return PhotosModel(
      albumId: prasedJson['albumId'],
      id: prasedJson['id'],
      title: prasedJson['title'],
      url: prasedJson['url'],
      thumbnailUrl: prasedJson['thumbnailUrl'],
    );
  }
}

class PhotoListModel {
  final List<PhotosModel> photos;
  PhotoListModel({
    this.photos,
  });

  // 工厂方法
  factory PhotoListModel.fromJson(List<dynamic> prasedJson) {
    List<PhotosModel> photos =
        prasedJson.map((i) => PhotosModel.fromJson(i)).toList();
    return PhotoListModel(
      photos: photos,
    );
  }
}
