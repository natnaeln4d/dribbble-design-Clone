// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dashboard/componets/my_text_field.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {

  final emailController=TextEditingController();
  final passwordController=TextEditingController();


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:SafeArea(
      child: Column(
        children: [
          Icon(
            Icons.message,
            size: 80,
          ),

        MyTextField(
          controller: emailController,
           hint: 'email',
            obscureText: false
            )

        ],
      ),
     ) ,
    );
  }
}