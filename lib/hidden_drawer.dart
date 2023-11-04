// ignore_for_file: prefer_const_constructors

import 'package:dashboard/Screen/login.dart';
import 'package:dashboard/Screen/main_screen2.dart';
import 'package:dashboard/Screen/profile_page.dart';
import 'package:dashboard/Screen/register_page.dart';
import 'package:dashboard/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}
class _HiddenDrawerState extends State<HiddenDrawer> {

  List<ScreenHiddenDrawer> _pages=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

   _pages=[
    // ScreenHiddenDrawer(
    //   ItemHiddenMenu(
    //     name: 'Register',
    //     baseStyle: TextStyle(),
    //     selectedStyle: TextStyle(),
    //     colorLineSelected: Colors.blue
    //   ),
    //   RegisterPage()
    // ),
    ScreenHiddenDrawer(
      ItemHiddenMenu(
        name:'Home Page',
        baseStyle:TextStyle(),
        selectedStyle: TextStyle(),
        colorLineSelected: Colors.blue
      ),
        HomePage()

    ),
    ScreenHiddenDrawer(
      ItemHiddenMenu(
        name:'Message',
        baseStyle:TextStyle(),
        selectedStyle: TextStyle(),
         colorLineSelected: Colors.blue
      ),
        MyHomePage()

    ),
     ScreenHiddenDrawer(
      ItemHiddenMenu(
        name:'Profile',
        baseStyle:TextStyle(),
        selectedStyle: TextStyle(),
         colorLineSelected: Colors.blue
      ),
        Profile()

    ),
    ScreenHiddenDrawer(
      ItemHiddenMenu(
       
        name:'Setting',
        baseStyle:TextStyle(),
        selectedStyle: TextStyle(
          color: Colors.blueGrey,
          backgroundColor: Colors.amber
        ),
         colorLineSelected: Colors.blue
      ),
        HomePage()

    ),

    


  

   ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      initPositionSelected:0 , 
      backgroundColorMenu: Colors.transparent,
   
      );
  }
}