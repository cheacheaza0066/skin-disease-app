// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class introPage1 extends StatelessWidget {
  const introPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color =
        const Color(0xff027368); 
    return Scaffold(
      // backgroundColor: Colors.greenAccent,
      backgroundColor: color,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 51,vertical: 40),
          child: Column(

            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                    height: 250,
                    width: 250,
                   child:Lottie.network('https://assets1.lottiefiles.com/packages/lf20_x17ybolp.json'),
                  ),
              const SizedBox(
                height: 40,
              ),
              
              Text(
                "ค้นหาโรคผิวหนังที่คุณอาจจะเป็น",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "คุณสามารถค้นหาโรคที่เกี่ยวกับผิวหนัง",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
