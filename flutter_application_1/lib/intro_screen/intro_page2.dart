import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class introPage2 extends StatelessWidget {
  const introPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color =
        const Color(0xff027368); 
    return Scaffold(
      backgroundColor: color, //<-- SEE HERE
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
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                    
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "อัพโหลดรูปภาพเพื่อค้นหาโรคที่คุณอาจจะเป็นได้",
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
