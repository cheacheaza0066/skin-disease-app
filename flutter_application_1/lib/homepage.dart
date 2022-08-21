// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainSkin.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_application_1/Skin_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            //AppBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Hello ,",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Thanin ,",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  //Profile
                  Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.person,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.blue[500],
                    borderRadius: BorderRadius.circular(15)),
                child: Row(children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Lottie.network(
                        'https://assets3.lottiefiles.com/packages/lf20_0zv8teye.json'),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ถ่ายรูปวิเคราะห์",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "คุณสามารถถ่ายรูปเพื่อหาโรคผิวหนังที่คุณเป็นได้",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 16),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.blue[900],
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Text(
                            "Get Started",
                            style: TextStyle(color: Colors.white),
                          )),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //search bar
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
            //   child: Container(
            //     padding: EdgeInsets.all(12),
            //     decoration: BoxDecoration(
            //         color: Colors.blue[100],
            //         borderRadius: BorderRadius.circular(12)),
            //     child: TextField(
            //       decoration: InputDecoration(
            //         prefixIcon: Icon(Icons.search),
            //         border: InputBorder.none,
            //         hintText: "ค้นหาโรคผิวหนัง",
            //       ),
            //     ),
            //   ),
            // ),

            const SizedBox(
              height: 25,
            ),
            //โรคผิวหนังทั้งหมด
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "โรคผิวหนัง",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "ดูทั้งหมด",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            // Expanded(
            //     child: ListView(
            //       scrollDirection: Axis.horizontal,
            //   children: [
               
            //     SkinCard(SkinImagePath: 'assets/images/test.jpg',SkinNameThai: 'ผิวหนังอักเสบ',SkinNameEng: 'Dermatitis',),
            //     SkinCard(SkinImagePath: 'assets/images/test.jpg',SkinNameThai: 'ผิวหนังอักเสบ',SkinNameEng: 'Dermatitis',),
            //     SkinCard(SkinImagePath: 'assets/images/test.jpg',SkinNameThai: 'ผิวหนังอักเสบ',SkinNameEng: 'Dermatitis',),

            //   ],
            // )),


             const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
