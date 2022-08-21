import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/mainSkin.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class main_screen extends StatefulWidget {
  main_screen({Key? key}) : super(key: key);
  @override
  State<main_screen> createState() => _main_screenState();
}

class _main_screenState extends State<main_screen> {
  int _selectedIndex = 0;
  final List<Widget> _children = <Widget>[
    HomePage(),
    MainSkin(),
    HomePage(),
    MainSkin(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _children.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        color: Colors.blue[400],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 2),
          child: GNav(
            onTabChange: (index){
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedIndex: _selectedIndex,
            backgroundColor: Colors.blue.shade400,
            color:Colors.black,
            tabBackgroundColor: Colors.blue.shade200,
            activeColor: Colors.black,
            duration: Duration(milliseconds: 400),
            gap: 8, 
            padding: EdgeInsets.all(13),
            tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.image,
              text: 'image',
            ),
           GButton(
              icon: Icons.search,
              text: 'search',
            ),
            GButton(
              icon: Icons.settings,
              text: 'settings',
            ),
          ],
          
          ),
        ),
      ),
    );
  }
}