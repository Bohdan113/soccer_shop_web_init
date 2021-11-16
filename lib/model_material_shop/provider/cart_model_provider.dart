import 'package:flutter/material.dart';

import '../cart.dart';

class CartModel with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  double get totalAmount{
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.description;
    });
    return total;
  }

  int get itemCount{
    return _items.length;
  }

  void addItem(
      String productId,
      double price,
      String title,
      String imageUrl,
      ) {
    if (_items.containsKey(productId)) {
      //change quantity
      _items.update(productId, (existingCartItem) =>
          CartItem(id: existingCartItem.id, title: existingCartItem.title, description: existingCartItem.description+1, price: existingCartItem.price, imageUrl: existingCartItem.imageUrl));
    } else {
      _items.putIfAbsent(
        productId,
            () => CartItem(
          id: DateTime.now().toString(),
          title: title,
          price: price,
          description: 1,
          imageUrl: imageUrl,
        ),
      );
    }
    notifyListeners();
  }
  void removeItem(String productId){
    _items.remove(productId);
    notifyListeners();
  }

  void clear (){
    _items = {};
    notifyListeners();
  }

}
