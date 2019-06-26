/*
**  字典嵌套数组
*/
class AddressModel{
  String city;
  List<dynamic> streets;
  // List<String> streets;
  AddressModel(
    {
      this.city,
      this.streets,
    }
  );

  // 提供一个json转对象的方法
  factory AddressModel.fromJson(Map<String,dynamic> parsedJson){
    var streets = parsedJson['streets'];
    // final List<String> streetsList = streets.cast<String>();
    // final List<String> streetsList = new List<String>.from(streets);
    return AddressModel(
      city: parsedJson['city'],
      streets: parsedJson['streets'],
      // streets: streetsList,
    );
  }
}
