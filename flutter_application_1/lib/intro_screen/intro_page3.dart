import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class introPage3 extends StatelessWidget {
  const introPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan, //<-- SEE HERE
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55,vertical: 40),
          child: Column(

            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                    height: 250,
                    width: 250,
                   child:Lottie.network('https://assets3.lottiefiles.com/packages/lf20_tflcy8s6.json'),
                  ),
              const SizedBox(
                height: 40,
              ),
              
              Text(
                "รวบรวมโรคที่เกี่ยวกับผิวหนัง",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "มีโรคผิวหนังรวบรวมเอาไว้ในเเอพพลิเคชั่น",
                textAlign: TextAlign.center,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
