import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class introPage3 extends StatelessWidget {
  const introPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent, //<-- SEE HERE
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(

            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                    height: 250,
                    width: 250,
                   child:Lottie.network('https://assets7.lottiefiles.com/private_files/lf30_dmituz7c.json'),
                  ),
              const SizedBox(
                height: 40,
              ),
              
              Text(
                "รวบรวมโรคผิวหนังมากกว่า 20 โรค",
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
                "เเอพพลิเคชั่น สามารถค้นหาโรคผิวหนังได้",
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
