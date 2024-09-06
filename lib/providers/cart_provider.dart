import 'package:agrogenesis/models/cart.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  double get totalAmount {
    double total = 0.0;
    _items.forEach((key, item) {
      total += item.price * item.quantity;
    });
    return total;
  }

  void addItem(String productId, String name, String imageUrl, double price,
      double rating) {
    if (_items.containsKey(productId)) {
      // Increase quantity
      _items.update(
        productId,
        (existingItem) => CartItem(
          id: existingItem.id,
          name: existingItem.name,
          imageUrl: existingItem.imageUrl,
          price: existingItem.price,
          rating: existingItem.rating,
          quantity: existingItem.quantity + 1,
        ),
      );
    } else {
      // Add new item
      _items.putIfAbsent(
        productId,
        () => CartItem(
          id: productId,
          name: name,
          imageUrl: imageUrl,
          price: price,
          rating: rating,
        ),
      );
    }
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);

    notifyListeners();
  }

  void updateQuantity(String productId, int quantity) {
    if (_items.containsKey(productId)) {
      _items.update(
        productId,
        (existingItem) => CartItem(
          id: existingItem.id,
          name: existingItem.name,
          imageUrl: existingItem.imageUrl,
          price: existingItem.price,
          rating: existingItem.rating,
          quantity: quantity,
        ),
      );
    }
    notifyListeners();
  }

  void clearCart() {
    _items = {};
    notifyListeners();
  }
}
