// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final double coverHeight=230;
  final double profileHeight=144;
  @override
  Widget build(BuildContext context) {
    final top=coverHeight-profileHeight/2;
    return Scaffold(
      body:ListView(
        
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(top),
          SizedBox(height: 155,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuildSocialIcon(FontAwesomeIcons.slack),
              SizedBox(width: 12,),
              BuildSocialIcon(FontAwesomeIcons.github),
              SizedBox(width: 12,),
              BuildSocialIcon(FontAwesomeIcons.linkedin),
              SizedBox(width: 12,),
              BuildSocialIcon(FontAwesomeIcons.twitter),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              data_widget(39,"project"),
              data_widget(546,"Following"),
              data_widget(5463, "Follower")
            ],
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('About',
                style: TextStyle(
                  fontSize:24,
                   ),
                   ),
                   SizedBox(height: 15,),
                   Text('FULL STACK DEVELOPER | SOFTWARE ENGINEERING MAJOR | STUDENT')
              ],
            ),
          ) 
        ],
      ),
    );
  }

  Widget data_widget(int value,String data) =>MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 4),
      onPressed: (){},
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "$value",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500
                ),
                ),
                SizedBox(height: 5,),
                Text(
                  data,
                style: TextStyle(fontSize: 16),)
            ],
          ),
    );

  CircleAvatar BuildSocialIcon(IconData icon) {
    return CircleAvatar(
          radius: 25,
          child: Material(
            shape:CircleBorder(),
            clipBehavior:Clip.hardEdge,
            child:InkWell(
              onTap: (){},
              child: Center(child: Icon(icon,size: 32,)))),
        );
  }

  Stack buildTop(double top) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        backgroundImage(),
        Positioned(
          top:top ,
          child: profile_circle())
      ],
    );
  }

  Container backgroundImage() {
    return Container(
          color: Colors.grey,
          child: Image.asset(
            'assets/images/fb.jpg',
            width: double.infinity,  
            height: coverHeight,
            fit: BoxFit.cover,
            ),
        

        );
  }

  Column profile_circle() {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                
                  radius: profileHeight/2, 
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                    width: 150,
                    height: 150,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/v1.jpg'),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Natnael Getachew',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 6,),
                Text(
                  'Software Engineer',
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.4,
                    color: Colors.grey
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
