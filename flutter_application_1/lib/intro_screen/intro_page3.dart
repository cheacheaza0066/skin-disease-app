// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class introPage3 extends StatelessWidget {
  const introPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color =
        const Color(0xff027368); // Second `const` is optional in assignments.

    return Scaffold(
      backgroundColor: color, //<-- SEE HERE
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 40),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                height: 250,
                width: 250,
                child: Lottie.network(
                    'https://assets3.lottiefiles.com/packages/lf20_tflcy8s6.json'),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "รวบรวมโรคที่เกี่ยวกับผิวหนัง",
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
                "มีโรคผิวหนังรวบรวมเอาไว้ในเเอพพลิเคชั่น",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
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
