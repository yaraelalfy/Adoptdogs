class Dog {
  final String image;
  final String type;
  final int barking;
  final int energy;
  final double minLife;
  final double maxLife;
  final int goodWithStrangers;

  factory Dog.fromJson(Map<String, dynamic> jsonData) {
    return Dog(
        minLife: jsonData['min_life_expectancy'],
        maxLife: jsonData['max_life_expectancy'],
        goodWithStrangers: jsonData['good_with_strangers'],
        image: jsonData['image_link'],
        type: jsonData['name'],
        barking: jsonData['barking'],
        energy: jsonData['energy']);
  }

  Dog({
    required this.image,
    required this.type,
    required this.barking,
    required this.energy,
    required this.minLife,
    required this.maxLife,
    required this.goodWithStrangers,
  });
}
