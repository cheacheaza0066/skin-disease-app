// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/color_filters.dart';
import 'package:flutter_application_1/model/SkinData.dart';
import 'package:flutter_application_1/screen/Skin_card.dart';
import 'package:flutter_application_1/screen/detail_screen.dart';

class SkinCardAll extends StatelessWidget {
  final SkinData data;
  SkinCardAll(this.data);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(data.idSkin, data.image,data.img,
                    data.nameThai, data.nameEng, data.detail,data.cause,data.protect,data.symptom,data.therapy,data.medical)));
      },
      
      
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [ 
              // Image.asset(
              //   data.image,
              //   // color: Colors.grey,
              //   colorBlendMode: BlendMode.color,
              // ),
              Image.network(data.img,colorBlendMode: BlendMode.color,),
              Text(
                data.nameThai,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future <String> loadImage() async{
  
  //current user id
  final _userID = FirebaseAuth.instance.currentUser!.uid;

  //collect the image name
  DocumentSnapshot variable = await FirebaseFirestore.instance.
    collection('data_user').  
    doc('user').
    collection('personal_data').
    doc(_userID).
    get();

    //a list of images names (i need only one)
    var _file_name = variable['path_profile_image'];

    //select the image url
    Reference  ref = FirebaseStorage.instance.ref().child("images/user/profile_images/${_userID}").child(_file_name[0]);
    
    //get image url from firebase storage
    var url = await ref.getDownloadURL();
    print('url: ' + url);
    return url;
}