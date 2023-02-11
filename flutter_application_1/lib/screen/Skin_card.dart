// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/SkinData.dart';
import 'package:flutter_application_1/screen/detail_screen.dart';

class SkinCard extends StatelessWidget {
  final SkinData data;
  SkinCard(this.data);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen( data.img,
                    data.nameThai, data.nameEng, data.detail,data.cause,data.protect,data.symptom,data.therapy,data.medical,data.refskin,
                    data!.timeStamp)));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Card(
          
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          child: Container(
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Column(children: [
              
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(9),
                  topLeft: Radius.circular(9),
                ),
                child: Image.asset(
                  data.img,
                  width: 150,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                data.nameThai,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                data.nameEng,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
