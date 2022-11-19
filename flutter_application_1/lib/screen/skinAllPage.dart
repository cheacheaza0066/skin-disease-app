// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/SkinData.dart';
import 'package:flutter_application_1/screen/Skin_card_all.dart';


class SkinAllPage extends StatefulWidget {
  SkinAllPage({Key? key}) : super(key: key);

  @override
  State<SkinAllPage> createState() => _SkinAllPageState();
}

class _SkinAllPageState extends State<SkinAllPage> {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference Skin = firestore.collection('Skin');
    return Scaffold(
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
          title: Text("โรคผิวหนังทั้งหมด",
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18.0,
                  color: Colors.white)),
          centerTitle: true,
          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(Icons.more_horiz),
          //     onPressed: () {},
          //     color: Colors.white,
          //   )
          // ],
        ),

        
      body:  StreamBuilder<QuerySnapshot>(
              stream: Skin.orderBy('idSkin', descending: false).snapshots(),
              builder: (_, snapshot) {
                if (snapshot.hasData) {
                  return ListView(
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
                              )),
                        )
                        .toList(),
                      );
                    
                } else {
                  return Center(child: CircularProgressIndicator(),);
                }
              },
            ),


    
    );
  }
}