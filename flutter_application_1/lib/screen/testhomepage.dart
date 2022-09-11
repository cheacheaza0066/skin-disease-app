// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/SkinData.dart';
import 'package:flutter_application_1/screen/SkinML.dart';
import 'package:flutter_application_1/screen/Skin_card_all.dart';
import 'package:flutter_application_1/screen/searchPage.dart';
import 'package:flutter_application_1/screen/skinAllPage.dart';
import 'package:lottie/lottie.dart';

class TestHomepage extends StatefulWidget {
  TestHomepage({Key? key}) : super(key: key);

  @override
  State<TestHomepage> createState() => _TestHomepageState();
}

class _TestHomepageState extends State<TestHomepage> {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference Skin = firestore.collection('Skin');

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/blue.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15),
              child: const Text(
                "สวัสดี",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
              child: const Text(
                "ยินดีต้อนรับสู่เเอพพลิเคชั่น ",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            

            // IgnorePointer(
            //   child: Padding(
            //     padding:
            //         const EdgeInsets.symmetric(horizontal: 25.0, vertical: 100),
            //     child: Flexible(
            //       flex: 1,
            //       child: TextField(
            //         readOnly: true,
            //         onTap: () {
            //           Navigator.push(context,
            //               MaterialPageRoute(builder: (context) => SkinAllPage()));
            //         },
            //         cursorColor: Colors.grey,
            //         decoration: InputDecoration(
            //           fillColor: Colors.white,
            //           filled: true,
            //           border: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(10),
            //               borderSide: BorderSide.none),
            //           hintText: 'Search',
            //           hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
            //           // prefixIcon: Container(
            //           //   padding: EdgeInsets.all(15),
            //           //   // child: Image.asset('assets/icons/search.png'),
            //           //   width: 18,
            //           // )
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            ListView(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: [
                const SizedBox(
                  height: 82,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 950,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Colors.grey[200],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ค้นหาโรคผิวหนัง",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 25),
                      //   child: Flexible(
                      //     flex: 1,
                      //     child: TextField(
                      //       readOnly: true,
                      //       onTap: () {
                      //         Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //                 builder: (context) => searchPage()));
                      //       },
                      //       cursorColor: Colors.grey,
                      //       decoration: InputDecoration(
                      //         fillColor: Colors.white,
                      //         filled: true,
                      //         border: OutlineInputBorder(
                      //             borderRadius: BorderRadius.circular(10),
                      //             borderSide: BorderSide.none),
                      //         hintText: 'Search',
                      //         hintStyle:
                      //             TextStyle(color: Colors.grey, fontSize: 18),
                      //         // prefixIcon: Container(
                      //         //   padding: EdgeInsets.all(15),
                      //         //   // child: Image.asset('assets/icons/search.png'),
                      //         //   width: 18,
                      //         // )
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => searchPage()));
                        },
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0.0, 20.0),
                                    blurRadius: 30.0,
                                    color: Colors.black12)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 150.0,
                                padding: EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 40),
                                child: Text(
                                  'ค้นหาเลย',
                                  style: TextStyle(
                                    color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(95.0),
                                      topLeft: Radius.circular(95.0),
                                      bottomRight: Radius.circular(10),
                                      topRight: Radius.circular(10)
                                      ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.search,
                                size: 30.0,
                              )
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "วิเคราะห์โรคจากรูปภาพ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
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
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "คุณสามารถถ่ายรูปเพื่อหาโรคผิวหนังที่คุณเป็นได้",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MainSkin()));
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                          color: Colors.blue[900],
                                          borderRadius:
                                              BorderRadius.circular(12)),
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
                      //โรคผิวหนังทั้งหมด
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "โรคผิวหนังที่พบบ่อย",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            // InkWell(
                            //   onTap: () {
                            //     Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (context) => SkinAllPage()));
                            //   },
                            //   child: Text(
                            //     "ดูทั้งหมด",
                            //     style: TextStyle(
                            //         fontWeight: FontWeight.bold,
                            //         fontSize: 16,
                            //         color: Colors.grey[600]),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      StreamBuilder<QuerySnapshot>(
                        stream: Skin.orderBy('tag', descending: false)
                            .limit(6)
                            .snapshots(),
                        builder: (_, snapshot) {
                          if (snapshot.hasData) {
                            return Container(
                              height: 220,
                              child: ListView(
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: (snapshot.data! as QuerySnapshot)
                                    .docs
                                    .map(
                                      (e) => SkinCardAll(SkinData(
                                        id: e['id'],
                                        image: e['image'],
                                        nameThai: e['nameThai'],
                                        nameEng: e['nameEng'],
                                        detail: e['detail'],
                                      )),
                                    )
                                    .toList(),
                              ),
                            );
                          } else {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
                      ),

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
                              "โรคผิวหนังทั้งหมด",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SkinAllPage()));
                              },
                              child: Text(
                                "ดูทั้งหมด",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.grey[600]),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      StreamBuilder<QuerySnapshot>(
                        stream: Skin.orderBy('id', descending: false)
                            .limit(6)
                            .snapshots(),
                        builder: (_, snapshot) {
                          if (snapshot.hasData) {
                            return Container(
                              height: 220,
                              child: ListView(
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: (snapshot.data! as QuerySnapshot)
                                    .docs
                                    .map(
                                      (e) => SkinCardAll(SkinData(
                                        id: e['id'],
                                        image: e['image'],
                                        nameThai: e['nameThai'],
                                        nameEng: e['nameEng'],
                                        detail: e['detail'],
                                      )),
                                    )
                                    .toList(),
                              ),
                            );
                          } else {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
                      ),

                      // Container(

                      //   height: 220,

                      //   child: ListView(
                      //     shrinkWrap: true,
                      //     physics: ScrollPhysics(),
                      //     scrollDirection: Axis.horizontal,
                      //     children: [
                      //       SkinCard(SkinData(
                      //           id: 1,
                      //           image: 'assets/images/urticaria.jpg',
                      //           nameThai: "ผิวหนังอักเสบ",
                      //           nameEng: 'Dermatitis')),
                      //       SkinCard(SkinData(
                      //           id: 2,
                      //           image: 'assets/images/urticaria.jpg',
                      //           nameThai: "2",
                      //           nameEng: '2')),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
