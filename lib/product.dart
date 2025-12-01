class Product {
  final int id;
  final String title;
  final double price;
  final String imageUrl;
  final String description;
  final double? originalPrice;
  final bool isSale;
  final String category;

  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.description,
    this.originalPrice,
    this.isSale = false,
    required this.category,
  });
}
