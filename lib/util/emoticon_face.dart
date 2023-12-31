// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {

  final String emoticonFace;
  const EmoticonFace({Key? key,required this.emoticonFace}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12)
      ),
      padding: EdgeInsets.all(12),
      child: Text(emoticonFace,
      style: TextStyle(
        fontSize: 28
      ),)
    );
  }
}