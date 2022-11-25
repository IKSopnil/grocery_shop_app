// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/pages/initial_page.dart';
import 'package:grocery_shop_app/pages/order/cart_code.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>cartmodel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: initial_page(),
      ),
      );
  }
}
