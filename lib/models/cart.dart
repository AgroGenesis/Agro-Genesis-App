class CartItem {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final double rating;
  int quantity;

  CartItem({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.rating,
    this.quantity = 1,
  });
}
