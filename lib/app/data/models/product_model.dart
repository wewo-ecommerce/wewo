class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final bool isFavorite;
  int quantity;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.quantity,
    this.isFavorite = false,
  });
}
