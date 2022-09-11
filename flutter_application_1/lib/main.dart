import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/OnboardingScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      return MaterialApp(
        theme: ThemeData(
          // fontFamily: "Pridi"
        ),
        debugShowCheckedModeBanner: false,
        home: OnboardingScreen(),
      );
}

}
