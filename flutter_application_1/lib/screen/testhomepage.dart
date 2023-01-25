// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/SkinData.dart';
import 'package:flutter_application_1/screen/SkinML.dart';
// import 'package:flutter_application_1/screen/SkinMLTest.dart';
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

    const color = const Color(0xff137576);
    const color2 = const Color(0xffEBD8C8);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
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
            ListView(
              shrinkWrap: false,
              physics: ScrollPhysics(),
              children: [
                const SizedBox(
                  height: 110,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 850,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: color2,
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
                                  color: color,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(95.0),
                                      topLeft: Radius.circular(95.0),
                                      bottomRight: Radius.circular(10),
                                      topRight: Radius.circular(10)),
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
                              color: color,
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
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "คุณสามารถถ่ายรูปเพื่อหาโรคผิวหนังที่คุณเป็นได้",
                                    style: TextStyle(
                                        color: Colors.white,
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
                                        "เริ่มถ่ายรูป",
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
                        height: 0,
                      ),
                      
                      //โรคผิวหนังทั้งหมด
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 25),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Text(
                      //         "โรคผิวหนังที่พบบ่อย",
                      //         style: TextStyle(
                      //             fontWeight: FontWeight.bold, fontSize: 20),
                      //       ),
                      //       // InkWell(
                      //       //   onTap: () {
                      //       //     Navigator.push(
                      //       //         context,
                      //       //         MaterialPageRoute(
                      //       //             builder: (context) => SkinAllPage()));
                      //       //   },
                      //       //   child: Text(
                      //       //     "ดูทั้งหมด",
                      //       //     style: TextStyle(
                      //       //         fontWeight: FontWeight.bold,
                      //       //         fontSize: 16,
                      //       //         color: Colors.grey[600]),
                      //       //   ),
                      //       // ),
                      //     ],
                      //   ),
                      // ),

                      const SizedBox(
                        height: 20,
                      ),

                      // StreamBuilder<QuerySnapshot>(
                      //   stream: Skin
                      //   // .where('tag', isEqualTo: 1)
                      //   .orderBy('tag', descending: false)
                      //       .limit(6)
                      //       .snapshots(),
                      //   builder: (_, snapshot) {
                      //     if (snapshot.hasData) {
                      //       return Container(
                      //         height: 220,
                      //         child: ListView(
                      //           shrinkWrap: false,
                      //           physics: ScrollPhysics(),
                      //           scrollDirection: Axis.horizontal,
                      //           children: (snapshot.data! as QuerySnapshot)
                      //               .docs
                      //               .map(
                      //                 (e) => SkinCardAll(SkinData(
                      //                   idSkin: e['idSkin'],
                      //                   image: e['image'],
                      //                   img: e['img'],
                      //                   nameThai: e['nameThai'],
                      //                   nameEng: e['nameEng'],
                      //                   detail: e['detail'],
                      //                   cause: e['cause'],
                      //                   protect: e['protect'],
                      //                   symptom: e['symptom'],
                      //                   therapy: e['therapy'],
                      //                   medical: e['medical'],
                      //                 )),
                      //               )
                      //               .toList(),
                      //         ),
                      //       );
                      //     } else {
                      //       return Center(
                      //         child: CircularProgressIndicator(),
                      //       );
                      //     }
                      //   },
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
                        stream: Skin.orderBy('idSkin', descending: false)
                            .limit(6)
                            .snapshots(),
                        builder: (_, snapshot) {
                          if (snapshot.hasData) {
                            return Container(
                              height: 220,
                              child: ListView(
                                shrinkWrap: false,
                                physics: ScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: (snapshot.data! as QuerySnapshot)
                                    .docs
                                    .map(
                                      (e) => SkinCardAll(SkinData(
                                         idSkin: e['idSkin'],
                                        image: e['image'],
                                        img: e['img'],
                                        nameThai: e['nameThai'],
                                        nameEng: e['nameEng'],
                                        detail: e['detail'],
                                        cause: e['cause'],
                                        protect: e['protect'],
                                        symptom: e['symptom'],
                                        therapy: e['therapy'],
                                        medical: e['medical'],
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
