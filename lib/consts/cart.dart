import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final _shopItems = [
    ['avocados', '120', 'images/peach-24 1.png', Colors.green],
    ['bananas', '106', 'images/bana.png', Colors.lightGreenAccent],
    ['mangos', '1020', 'images/mango.png', Colors.greenAccent],
    ['peaches', '150', 'images/peach-24 1.png', Colors.cyanAccent],
    ['oranges', '140', 'images/peach-24 1.png', Colors.blue],
    ['apples', '89', 'images/peach-24 1.png', Colors.red],
    ['avocados', '120', 'images/peach-24 1.png', Colors.green],
    ['bananas', '106', 'images/peach-24 1.png', Colors.lightGreenAccent],
    ['peaches', '1020', 'images/peach-24 1.png', Colors.greenAccent],
    ['cabbage', '150', 'images/peach-24 1.png', Colors.cyanAccent],
    ['oranges', '140', 'images/peach-24 1.png', Colors.blue],
    ['apples', '89', 'images/peach-24 1.png', Colors.red]
  ];
//list of cart items
  final List _cartItems = [];
  get shopItems => _shopItems;
  get cartItems => _cartItems;
  // Add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // Remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // Calculate total of items in cart
  double calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice;
  }
}
