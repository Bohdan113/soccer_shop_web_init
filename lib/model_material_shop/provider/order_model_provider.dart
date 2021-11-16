import 'package:flutter/material.dart';
import '../cart.dart';
import '../orders.dart';

class OrderModel with ChangeNotifier {
  List<OrderItem> _orders = [];

  List<OrderItem> get orders {
    return [..._orders];
  }

  void addOrder(List<CartItem> cardProducts, double total) {
    _orders.insert(
      0,
      OrderItem(
        id: DateTime.now().toString(),
        amount: total,
        products: cardProducts,
        dateTime: DateTime.now(),
      ),
    );
    notifyListeners();
  }
}