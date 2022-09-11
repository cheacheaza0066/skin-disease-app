import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class introPage1 extends StatelessWidget {
  const introPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent, //<-- SEE HERE
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 40),
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
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "คุณสามารถค้นหาโรคที่เกี่ยวกับผิวหนัง",
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
