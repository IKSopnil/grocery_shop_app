// ignore_for_file: camel_case_types, must_be_immutable, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class Grocery_item extends StatelessWidget {
  final itemname;
  final itemprice;
  final imagepath;
  final colors;
  void Function()? onPressed;

Grocery_item(
      {super.key,
      required this.itemname,
      required this.itemprice,
      required this.imagepath,
      required this.colors,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: colors[100], borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imagepath,
              height: 64,
            ),
            Text(itemname),
            MaterialButton(
              onPressed: onPressed,
              color: colors[800],
              child: Text(
                '৳ ' + itemprice,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
