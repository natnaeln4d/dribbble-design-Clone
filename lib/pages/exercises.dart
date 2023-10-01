// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final color;
  final String exerciseName;
  final String numberOfExericise;

  ExerciseTile({super.key,
  required this.icon,
  required this.exerciseName,
  required this.numberOfExericise,
  required this.color});

  @override
  Widget build(BuildContext context) {
    return  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            padding: EdgeInsets.all(14),
                             color: color,
                            child: Icon(
                              
                              icon,
                              
                            
                              ),
                          ),
                        ),
                        title: Text(exerciseName,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        subtitle: Text(numberOfExericise),
                        trailing: Icon(Icons.more_horiz,color: Colors.black,),
                      ),
                     );
  }
}