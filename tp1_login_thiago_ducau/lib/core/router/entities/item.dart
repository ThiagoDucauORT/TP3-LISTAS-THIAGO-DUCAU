class Item {
  final String title;
  final String description;
  final String imageUrl;
  final String country;
  final double rating;
  final List<String> attractions; // Nueva propiedad
  final List<String> foods;       // Nueva propiedad

  Item({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.country,
    required this.rating,
    required this.attractions,
    required this.foods,
  });
}