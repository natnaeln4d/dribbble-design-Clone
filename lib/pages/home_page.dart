 // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields, unused_field

 import 'package:dashboard/pages/exercises.dart';
import 'package:dashboard/util/emoticon_face.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  FirebaseAuth _auth=FirebaseAuth.instance;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
      //     BottomNavigationBarItem(icon: Icon(Icons.message),label: ''),
      //     BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),

      //   ]),
      body:SafeArea(
        child: Column(
          
          children: [
            
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
                child: Column(
                  
                  children: [
                     Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hi Nati!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height:4,),
                       Text('23 sep 2023',
                      style: TextStyle(
                        color: Colors.blue[200],
                    
                      ),),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)
                    ),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  )
                ],
                          ),
                          SizedBox(height: 20,),
                          Container(
                          padding:EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.all(Radius.circular(10))          
                ),
                child: Row(
                     
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5,),
                    
                    Text('Search...',
                    style: TextStyle(
                      color: Colors.white
                    ),),
                     
              
                  ]),
                          ),
              
                          SizedBox(
                height: 25,
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('How do you feel?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          )
              
              
                    ],
                  ),
              
                  SizedBox(
                height: 25,
                ),
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        EmoticonFace(emoticonFace: "😫",),
                        SizedBox(height: 8,),
                        Text(
                          'Bad',
                        style: TextStyle(
                          color: Colors.white
                        ),)        
                      ],
                    ),
                       Column(
                      children: [
                        EmoticonFace(emoticonFace: "😊",),
                        SizedBox(height: 8,),
                        Text(
                          'Fine',
                        style: TextStyle(
                          color: Colors.white
                        ),)        
                      ],
                    ),
              
                       Column(
                      children: [
                        EmoticonFace(emoticonFace: "😄",),
                        SizedBox(height: 8,),
                        Text(
                          'well',
                        style: TextStyle(
                          color: Colors.white
                        ),)        
                      ],
                    ),
                       Column(
                      children: [
                        EmoticonFace(emoticonFace: "😇",),
                        SizedBox(height: 8,),
                        Text(
                          'Excellent',
                        style: TextStyle(
                          color: Colors.white
                        ),)        
                      ],
                    ),
                  ],
                ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                    color: Colors.grey[200],
                  ),
                  padding: EdgeInsets.all(25),
                  
                 child: Center(child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Exercises",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black
                        ),),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.black,)
                      ],
                    ),
                    SizedBox(height: 20,),

                    ExerciseTile(
                      exerciseName: 'Speaking Skill',
                      numberOfExericise: '13 exercise',
                      icon: Icons.favorite,
                      color: Colors.orange,
                    ),

                    SizedBox(height: 20,),
                    ExerciseTile(
                      exerciseName: 'Reading Skill',
                      numberOfExericise: '15 exercise',
                      icon: Icons.person,
                      color: Colors.green,
                    ),
                     SizedBox(height: 20,),
                    ExerciseTile(
                      exerciseName: 'Writting Skill',
                      numberOfExericise: '15 exercise',
                      icon: Icons.star,
                      color: Colors.red,
                    ),

                    

                     
                  ],)
                  ),  
                ),
              )
          ]),
      ) ,
    );
  }
}