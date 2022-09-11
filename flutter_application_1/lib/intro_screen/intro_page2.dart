import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class introPage2 extends StatelessWidget {
  const introPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent, //<-- SEE HERE
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 42,vertical: 56),
          child: Column(

            children: [
              const SizedBox(
                height: 85,
              ),
              Container(
                    height: 250,
                    width: 250,
                   child:Lottie.network('https://assets1.lottiefiles.com/packages/lf20_GxMZME.json'),
                  ),
              const SizedBox(
                height: 40,
              ),
              
              Text(
                "วิเคราะห์โรคผิวหนังจากรูปภาพ",
                
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
                "อัพโหลดรูปภาพเพื่อค้นหาโรคที่คุณอาจจะเป็นได้",
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
