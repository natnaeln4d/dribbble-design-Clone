// ignore_for_file: prefer_const_constructors

import 'package:dashboard/Screen/main_screen.dart';
import 'package:dashboard/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: HomePage(),
    );
    
  }
}