// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscureText;
  const MyTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      controller: controller,
      obscureText: obscureText,
      
      
      decoration: InputDecoration(
                hintText: hint,
                fillColor: Colors.grey.shade600,
                filled: true,
                hintStyle: TextStyle(
                  color:Colors.white
                  ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade600
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade600
                  )
            )
      )

    );
  }
}