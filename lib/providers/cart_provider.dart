import 'package:flutter/material.dart';
import 'package:plantify/models/cart_item.dart';

class CartProvider extends ChangeNotifier {
  List<CartItem> items = [];
  int totalPrice = 0;

  int getTotalPrice() {
    totalPrice = 0;
    for (var item in items) {
      totalPrice += item.quantity * item.plant.price;
    }
    return totalPrice;
  }

  void increment(CartItem item) {
    item.quantity++;
    notifyListeners();
  }

  void decrement(CartItem item) {
    item.quantity--;
    notifyListeners();
  }

  void addToCart(CartItem item) {
    for (var cartItem in items) {
      if (cartItem.plant.id == item.plant.id) {
        increment(cartItem);
        return;
      }
    }
    items.add(item);
    notifyListeners();
  }

  void deleteItem(CartItem item) {
    items.remove(item);
    notifyListeners();
  }
}
