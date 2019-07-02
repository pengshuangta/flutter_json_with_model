import 'package:json_annotation/json_annotation.dart'; 
  
part 'js_page_model.g.dart';


@JsonSerializable()
  class JsPageModel extends Object {

  @JsonKey(name: 'page')
  int page;

  @JsonKey(name: 'per_page')
  int perPage;

  @JsonKey(name: 'total')
  int total;

  @JsonKey(name: 'total_pages')
  int totalPages;

  @JsonKey(name: 'author')
  Author author;

  @JsonKey(name: 'data')
  List<Data> data;

  JsPageModel(this.page,this.perPage,this.total,this.totalPages,this.author,this.data,);

  factory JsPageModel.fromJson(Map<String, dynamic> srcJson) => _$JsPageModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$JsPageModelToJson(this);

}

  
@JsonSerializable()
  class Author extends Object {

  @JsonKey(name: 'first_name')
  String firstName;

  @JsonKey(name: 'last_name')
  String lastName;

  Author(this.firstName,this.lastName,);

  factory Author.fromJson(Map<String, dynamic> srcJson) => _$AuthorFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AuthorToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'first_name')
  String firstName;

  @JsonKey(name: 'last_name')
  String lastName;

  @JsonKey(name: 'avatar')
  String avatar;

  @JsonKey(name: 'images')
  List<Images> images;

  Data(this.id,this.firstName,this.lastName,this.avatar,this.images,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}

  
@JsonSerializable()
  class Images extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'imageName')
  String imageName;

  Images(this.id,this.imageName,);

  factory Images.fromJson(Map<String, dynamic> srcJson) => _$ImagesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);

}

  
