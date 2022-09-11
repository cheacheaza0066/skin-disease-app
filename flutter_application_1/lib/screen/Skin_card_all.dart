// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
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
                builder: (context) => DetailScreen(data.id, data.image,
                    data.nameThai, data.nameEng, data.detail)));
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
              Image.asset(
                data.image,
                // color: Colors.grey,
                colorBlendMode: BlendMode.color,
              ),
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
