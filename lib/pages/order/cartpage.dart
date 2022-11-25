// ignore_for_file: prefer_interpolation_to_compose_strings, sort_child_properties_last, prefer_const_constructors, camel_case_types, unnecessary_string_escapes, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app/pages/order/cart_code.dart';
import 'package:provider/provider.dart';

class Cart_page extends StatelessWidget {
  const Cart_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme:IconThemeData(color: Colors.black) ,
          
        ),
        body: Consumer<cartmodel>(builder: (context, value, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "My Cart",
                  style: GoogleFonts.notoSerif(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: value.cartItem.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(8)),
                              child: ListTile(
                                  leading: Image.asset(
                                    value.cartItem[index][2],
                                    height: 36,
                                  ),
                                  title: Text(value.cartItem[index][0]),
                                  subtitle: Text('\৳ ' + value.cartItem[index][1]),
                                  trailing: IconButton(
                                icon: Icon(Icons.cancel),
                                onPressed: () =>Provider.of<cartmodel>(context,listen:false).removeItemfromcart(index),
                              )),
                        ),);
                      }
                    )
                  ),

                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.green,
                      borderRadius: BorderRadius.circular(8)),
                       
                      padding: EdgeInsets.all(15),
                      child: Row(
                        
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                          // ignore: prefer_const_constructors
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Total Price ",
                              style: TextStyle(
                                color: Color.fromARGB(255, 254, 255, 254)
                                )
                               
                                ),
                                SizedBox(height: 4,),
                              Text('\৳ '+value.calculatetotal(),
                              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              ),),
                            ],
                          ),


                          Container(
                            decoration:BoxDecoration(border: Border.all(color: Colors.green.shade100),
                            borderRadius: BorderRadius.circular(8),),
                            padding: EdgeInsets.all(12),
                            child: Row(
                              children: [
                                Text("Pay Now",
                                style: TextStyle(color: Colors.white))
                                ,
                                Icon(Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.white,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
            ],
          );
        }));
  }
}
