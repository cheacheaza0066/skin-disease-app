// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class SkinCard extends StatelessWidget {

  final  String  SkinImagePath;
  final  String  SkinNameThai;
  final  String  SkinNameEng;

  SkinCard({
    required this.SkinImagePath,
    required this.SkinNameThai,
    required this.SkinNameEng});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: BorderRadius.circular(7)),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              SkinImagePath,
              height: 90,
            ),
          ),
          SizedBox(height: 15,),
          Text(SkinNameThai,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text(SkinNameEng) ,
        ]),
      ),
    );
  }
}
