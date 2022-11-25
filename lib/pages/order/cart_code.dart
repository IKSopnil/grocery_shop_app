// ignore_for_file: camel_case_types, prefer_final_fields

import 'package:flutter/material.dart';

class cartmodel extends ChangeNotifier {
  final List shopitems = [
    ["Rice", "50", "lib/images/rice.png", Colors.green],
    ["Banana", "20", "lib/images/banana.png", Colors.yellow],
    ["Chips", "10", "lib/images/potato-chips.png", Colors.orange],
    ["Jack-Fruit", "15", "lib/images/jackfruit.png", Colors.green],
    ["Bottle", "5", "lib/images/water.png", Colors.blue],
    ["Chips", "10", "lib/images/potato-chips.png", Colors.orange],
    ["Banana", "20", "lib/images/banana.png", Colors.yellow],
  ];

  List _cartitem = [];

  get shop => shopitems;

  get cartItem => _cartitem;

  void addItemtocart(int index) {
    _cartitem.add(shopitems[index]);
    notifyListeners();
  }

  void removeItemfromcart(int index) {
    _cartitem.removeAt(index);
    notifyListeners();
  }

  String calculatetotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartitem.length; i++){
      totalPrice += double.parse(_cartitem[i][1]);



    }

    return totalPrice.toStringAsFixed(2);
  }
}
