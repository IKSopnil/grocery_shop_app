// ignore_for_file: prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app/pages/Homepage.dart';

class initial_page extends StatelessWidget {
  const initial_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //logo
          Padding(
              padding: const EdgeInsets.only(
                  left: 80, right: 80, top: 70, bottom: 10),
              child: Image.asset(
                "lib/images/grocery.png",
              )),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "We supply daily necessities at your home",
              textAlign: TextAlign.center,
              // ignore: prefer_const_constructors
              style: GoogleFonts.notoSerif(
                  fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),

          Text(
            "Have some fresh groceries",
            style: TextStyle(color: Color.fromARGB(255, 158, 158, 158)),
          ),
          Spacer(),
          GestureDetector(
            onTap: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Home_page();
            })),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.all(20),
              child: Text("Get Started",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  )),
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
