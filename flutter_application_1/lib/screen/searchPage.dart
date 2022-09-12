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

  @override
  Widget build(BuildContext context) {
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
      )

        ),



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
                                            data['id'],
                                            data['image'],
                                            data['nameThai'],
                                            data['nameEng'],
                                            data['detail'])));
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
                                    child: Image.asset(data['image'],
                                        fit: BoxFit.cover),
                                  ),
                                  textColor: Colors.white,
                                  tileColor: Colors.indigo,           

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
                                            data['id'],
                                            data['image'],
                                            data['nameThai'],
                                            data['nameEng'],
                                            data['detail'])));
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
                                    child: Image.asset(data['image'],
                                        fit: BoxFit.cover),
                                  ),
                                  textColor: Colors.white,
                                  tileColor: Colors.indigo,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                            );
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
