import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/SkinML.dart';
// import 'package:flutter_application_1/screen/SkinMLTest.dart';

import 'package:flutter_application_1/screen/searchPage.dart';
import 'package:flutter_application_1/screen/skinAllPage.dart';
import 'package:flutter_application_1/screen/testhomepage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class main_screen extends StatefulWidget {
  main_screen({Key? key}) : super(key: key);
  @override
  State<main_screen> createState() => _main_screenState();
}

class _main_screenState extends State<main_screen> {
  int _selectedIndex = 0;
  final List<Widget> _children = <Widget>[
    TestHomepage(),
    MainSkin(),
    searchPage(),
    SkinAllPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _children.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 2),
          child: GNav(
            onTabChange: (index){
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedIndex: _selectedIndex,
            backgroundColor: Colors.black,
            color:Colors.white,
            tabBackgroundColor: Colors.white,
            activeColor: Colors.black,
            duration: Duration(milliseconds: 400),
            gap: 8, 
            padding: EdgeInsets.all(6),
            tabs: const [
            GButton(
              icon: Icons.home,
              text: 'หน้าเเรก',
            ),
            GButton(
              icon: Icons.image_search,
              text: 'ค้นหาจากรูปภาพ',
            ),
           GButton(
              icon: Icons.search,
              text: 'ค้นหาโรคผิวหนัง',
            ),
            GButton(
              icon: Icons.other_houses_sharp,
              text: 'โรคผิวหนังทั้งหมด',
            ),
          ],
          
          ),
        ),
      ),
    );
  }
}