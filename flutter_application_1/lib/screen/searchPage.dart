// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/model/SkinData.dart';
import 'package:flutter_application_1/screen/detail_screen.dart';

class searchPage extends StatefulWidget {
  searchPage({Key? key}) : super(key: key);

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  String name = "";
  //โรคตุ่มน้ำพองใส
  var Bullous = [
    "ตุ่มน้ำ",
    "ตุ่มใส",
    "แสบ",
    "แผลถลอก",
    "สะเก็ด",
    "คัน",
    "เป็นแผล"
  ];
  //อาการโรคลมพิษ
  var Urticaria = ["แน่น", "หน้าอก", "จมูก", "ปวดท้อง", "บวม", "ปาก", "ตา"];
//โรคเริม
  var Herpes = [
    "ปาก",
    "เหงือกบวม",
    "ต่อมน้ำเหลือง",
    "แผลภายใน",
    "แผลเปื่อย",
    "ตุ่มน้ำ",
    "แสบร้อน",
    "เหงือก"
  ];
  //โรคหลอดเลือดอักเสบ
  var Vasculitis = [
    "ผื่นนูน",
    "ผื่นแดง",
    "คัน",
    "เส้นเลือด",
    "ผื่นขึ้น",
    "ตาอักเสบ",
    "แสบร้อน",
    "เข็มทิ่ม",
    "ปวด",
    "จุดแดง"
  ];


  @override
  Widget build(BuildContext context) {
    const color = const Color(0xff137576);
    const color2 = const Color(0xffEBD8C8);
    return Scaffold(

        //   appBar: AppBar(
        //     // The search area here
        //     title: Container(
        //   width: double.infinity,
        //   height: 40,
        //   decoration: BoxDecoration(
        //       color: Colors.white, borderRadius: BorderRadius.circular(5)),
        //   child: Center(
        //     child: TextField(
        //            onChanged: (val) {
        //         setState(() {
        //           name = val;
        //         });
        //       },
        //       decoration: InputDecoration(
        //           prefixIcon: const Icon(Icons.search),

        //           hintText: 'ค้นหาโรคผิวหนัง...',
        //           border: InputBorder.none),
        //     ),
        //   ),
        // )),

        backgroundColor: Color.fromARGB(255, 24, 165, 163),
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.white,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
            title: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      name = val;
                    });
                  },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'ค้นหาโรคผิวหนัง...',
                      border: InputBorder.none),
                ),
              ),
            )),
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('Skin').snapshots(),
          builder: (context, snapshots) {
            return (snapshots.connectionState == ConnectionState.waiting)
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Container(
                    // color: Colors.grey[200],
                    padding: EdgeInsets.all(20),
                    child: ListView.builder(
                        itemCount: snapshots.data!.docs.length,
                        itemBuilder: (context, index) {
                          var data = snapshots.data!.docs[index].data()
                              as Map<String, dynamic>;

                          if (name.isEmpty) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailScreen(
                                            //  data['idSkin'],
                                            // data['image'],
                                            data['img'],
                                            data['nameThai'],
                                            data['nameEng'],
                                            data['detail'],
                                            data['cause'],
                                            data['protect'],
                                            data['symptom'],
                                            data['therapy'],
                                            data['medical'],
                                            data['refskin'],
                                            data['timeStamp'].toDate(),
                                            
                                            )));
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: 20),
                                decoration: BoxDecoration(
                                    // color: Colors.indigo[500],
                                    // borderRadius: BorderRadius.circular(20)
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10))),
                                child: ListTile(
                                  title: Text(
                                    data['nameThai'],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    data['nameEng'],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  ),
                                  leading: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minWidth: 44,
                                      minHeight: 44,
                                      maxWidth: 64,
                                      maxHeight: 64,
                                    ),
                                    child: Image.network(data['img'],
                                        fit: BoxFit.cover),
                                  ),
                                  textColor: Colors.white,
                                  tileColor: Color.fromARGB(255, 90, 202, 189),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                            );
                          }

                          if (data['nameThai']
                              .toString()
                              .toLowerCase()
                              .startsWith(name.toLowerCase())) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailScreen(
                                            // data['idSkin'],
                                            // data['image'],
                                            data['img'],
                                            data['nameThai'],
                                            data['nameEng'],
                                            data['detail'],
                                            data['cause'],
                                            data['protect'],
                                            data['symptom'],
                                            data['therapy'],
                                            data['medical'],
                                            data['refskin'],
                                            data['timeStamp'].toDate(),
                                            )));
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: 20),
                                decoration: BoxDecoration(
                                    // color: Colors.indigo[500],
                                    // borderRadius: BorderRadius.circular(20)
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10))),
                                child: ListTile(
                                  title: Text(
                                    data['nameThai'],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    data['nameEng'],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  ),
                                  leading: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minWidth: 44,
                                      minHeight: 44,
                                      maxWidth: 100,
                                      maxHeight: 100,
                                    ),
                                    child: Image.network(data['img'],
                                        fit: BoxFit.cover),
                                  ),

                                  
                                  textColor: Colors.white,
                                  tileColor: Color.fromARGB(255, 90, 202, 189),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                            );
                          }
                          if (Bullous.any(
                              (element) => name.contains(element))) {
                            var searchBullous = Bullous.where(
                                (element) => name.contains(element));
                            if (searchBullous.any((element) =>
                                data['symptom'].toString().contains(element))) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailScreen(
                                            data['img'],
                                            data['nameThai'],
                                            data['nameEng'],
                                            data['detail'],
                                            data['cause'],
                                            data['protect'],
                                            data['symptom'],
                                            data['therapy'],
                                            data['medical'],
                                            data['refskin'],
                                            data['timeStamp'].toDate(),)));
                                },
                                child: Container(
                                margin: EdgeInsets.only(bottom: 20),
                                decoration: BoxDecoration(
                                    // color: Colors.indigo[500],
                                    // borderRadius: BorderRadius.circular(20)
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10))),
                                child: ListTile(
                                  title: Text(
                                    data['nameThai'],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    data['nameEng'],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  ),
                                  leading: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minWidth: 44,
                                      minHeight: 44,
                                      maxWidth: 100,
                                      maxHeight: 100,
                                    ),
                                    child: Image.network(data['img'],
                                        fit: BoxFit.cover),
                                  ),

                                  
                                  textColor: Colors.white,
                                  tileColor: Color.fromARGB(255, 90, 202, 189),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                            );
                            }
                          }





                          return Container();
                        }),
                  );
          },
        ));
  }
}

Widget buildResultCard(data) {
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 2.0,
      child: Container(
          child: Center(
              child: Text(
        data['nameThai'],
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),
      ))));
}
// ignore_for_file: prefer_const_constructors













