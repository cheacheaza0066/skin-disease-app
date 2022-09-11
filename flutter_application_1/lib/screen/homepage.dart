// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/SkinData.dart';
import 'package:flutter_application_1/screen/SkinML.dart';
import 'package:flutter_application_1/screen/skinAllPage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_application_1/screen/Skin_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference Skin = firestore.collection('Skin');
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
                        "สวัสดีครับ ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "ค้นหาโรคผิวหนังที่คุณอาจเป็น ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  
                  //Profile
                  // Container(
                  //     padding: const EdgeInsets.all(12),
                  //     decoration: BoxDecoration(
                  //       color: Colors.deepPurple[100],
                  //       borderRadius: BorderRadius.circular(12),
                  //     ),
                  //     child: const Icon(
                  //       Icons.person,
                  //     ))
                ],
              ),
            ),
            TextField(
                    readOnly: true,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SkinAllPage()));
                    },
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                      // prefixIcon: Container(
                      //   padding: EdgeInsets.all(15),
                      //   // child: Image.asset('assets/icons/search.png'),
                      //   width: 18,
                      // )
                    ),
                  ),
            //search bar
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
            //   child: Container(
            //     padding: EdgeInsets.all(1),
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
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainSkin()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.blue[900],
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                                child: Text(
                              "Get Started",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
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

            StreamBuilder<QuerySnapshot>(
              stream: Skin.orderBy('id', descending: false).snapshots(),
              builder: (_, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: (snapshot.data! as QuerySnapshot)
                        .docs
                        .map(
                          (e) => SkinCard(SkinData(
                              id: e['id'],
                              image: e['image'],
                              nameThai: e['nameThai'],
                              nameEng: e['nameEng'],
                              detail: e['detail'],
                              )),
                        )
                        .toList(),
                  );
                } else {
                  return Center(child: CircularProgressIndicator(),);
                }
              },
            ),

            // Expanded(
            //     child: ListView(
            //   scrollDirection: Axis.horizontal,
            //   children: [
            //     SkinCard(SkinData(
            //         id: 1,
            //         image: 'assets/images/urticaria.jpg',
            //         nameThai: "ผิวหนังอักเสบ",
            //         nameEng: 'Dermatitis')),
            //     SkinCard(SkinData(
            //         id: 2,
            //         image: 'assets/images/urticaria.jpg',
            //         nameThai: "2",
            //         nameEng: '2')),
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
