/*
**  简单的数组
*/
class StudentModel{
  String id;
  String name;
  double score;
  StudentModel(
    {
      this.id,
      this.name,
      this.score,
    }
  );

  // 工厂方法
  factory StudentModel.fromJson(Map<String,dynamic> parsedJson){
    return StudentModel(
      id: parsedJson['id'],
      name: parsedJson['name'],
      score: parsedJson['score'],
    );
  }
}