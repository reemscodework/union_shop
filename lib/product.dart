class Product {
  final int id;
  final String title;
  final double price;
  final String imageUrl;
  final String description;
  final double? originalPrice;
  final bool isSale;
  final String category;
  final String? collection;
  final Map<String, String>? colors;

  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.description,
    this.originalPrice,
    this.isSale = false,
    required this.category,
    this.collection,
    this.colors,
  });
}
