// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  late int id;
  late String image;
  late String img;
  late String nameThai;
  late String nameEng;
  late String detail;
  late String cause;
  late String protect;
  late String symptom;
  late String therapy;
  late String medical;



  DetailScreen(
      this.id, this.image, this.img, this.nameThai, this.nameEng, this.detail,this.cause,this.protect,this.symptom,this.therapy,this.medical,
      {Key? key})
      : super(key: key);

  @override
  State<DetailScreen> createState() =>
      _DetailScreenState(id, image, img, nameThai, nameEng, detail,cause,protect,symptom,therapy,medical);
}

class _DetailScreenState extends State<DetailScreen> {
  int _id;
  String _image;
  String _img;
  String _nameThai;
  String _nameEng;
  String _detail;
  String _cause;
  String _protect;
  String _symptom;
  String _therapy;
  String _medical;
  _DetailScreenState(this._id, this._image, this._img, this._nameThai,
      this._nameEng, this._detail,this._cause,this._protect,this._symptom,this._therapy,this._medical,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          
          Image.network(
            _img,
            height: 315,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),

          //  Padding(
          //   padding: EdgeInsets.only(left: 20,top: 20),
          //   child: Row(
          //     children: [
          //       InkWell(
          //         onTap: () {
          //           Navigator.pop(context, true);
          //         },
          //         child: Image.asset('assets/images/left-arrow.png',width: 20,)
          //       ),
          //     ],
          //   ),
          // ),
          
          

          ListView(
            children: [
             
              SizedBox(
                height: 296,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  color: Colors.grey[200],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        _nameThai,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 24),
                      child: Text(
                        _nameEng,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),

                    SizedBox(height: 20),

                     Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 24),
                      child: Text(
                        "ความเป็นมาของโรค",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 11, horizontal: 24),
                      child: Text(
                        _detail,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),

                     Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 24),
                      child: Text(
                        "สาเหตุการเกิดโรคผิวหนัง",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),

                     Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 11, horizontal: 24),
                      child: Text(
                        _cause,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 24),
                      child: Text(
                        "การป้องกันโรคผิวหนัง",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 11, horizontal: 24),
                      child: Text(
                        _protect,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 24),
                      child: Text(
                        "อารการของโรคผิวหนัง",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 11, horizontal: 24),
                      child: Text(
                        _symptom,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 24),
                      child: Text(
                        "วิธีการรักษาโรคผิวหนัง",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 11, horizontal: 24),
                      child: Text(
                        _therapy,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 24),
                      child: Text(
                        "ยาที่ใช้รักษาโรคผิวหนัง",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 11, horizontal: 24),
                      child: Text(
                        _medical,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
          
        ],
      )),
    );
  }
}





// SizedBox(height: 5),
        // ClipRRect(
        //     child: Image.asset(_image,
        //         height: 300.0, width: 100.0, fit: BoxFit.contain)),
        // SizedBox(height: 20.0),
        // Center(
        //   child: Container(
        //     width: MediaQuery.of(context).size.width - 50.0,
        //     child: Text(_detail
        //         ,
        //         textAlign: TextAlign.center,
        //         style: TextStyle(
        //             fontFamily: 'Varela',
        //             fontSize: 16.0,
        //             color: Color.fromARGB(255, 112, 114, 114))),
        //   ),
        // ),