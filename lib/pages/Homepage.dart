// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app/pages/grocery/item.dart';
import 'package:grocery_shop_app/pages/order/cart_code.dart';
import 'package:grocery_shop_app/pages/order/cartpage.dart';
import 'package:provider/provider.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Cart_page();
                },
              ),
            );
          },
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          child: Icon(Icons.shopping_bag),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(height: 48),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text("How you doin?",
                    style: GoogleFonts.notoSerif(
                      fontSize: 14,
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Let's order some items for you",
                  style: GoogleFonts.notoSerif(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical:5),
                child: Text(
                  "Fresh Items",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Expanded(
                child: Consumer<cartmodel>(builder: (context, value, child) {
                  return GridView.builder(
                      itemCount: value.shopitems.length,
                      padding: EdgeInsets.all(12),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                      itemBuilder: (context, index) {
                        return Grocery_item(
                          itemname: value.shopitems[index][0],
                          itemprice: value.shopitems[index][1],
                          imagepath: value.shopitems[index][2],
                          colors: value.shopitems[index][3],
                          onPressed: () {
                            Provider.of<cartmodel>(context, listen: false)
                                .addItemtocart(index);
                          },
                        );
                      });
                }),
              )
            ],
          ),
        ));
  }
}
