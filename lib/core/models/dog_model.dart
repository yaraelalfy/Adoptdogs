class DogModel {
  final String name;

  DogModel({required this.name,});
  factory DogModel.fromJson(Map<String, dynamic> json) {
    return DogModel(
      name: json['name'],
    );
  }
}
