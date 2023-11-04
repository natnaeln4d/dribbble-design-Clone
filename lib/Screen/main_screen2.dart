// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dashboard/Screen/messages.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? searchField;
  final TextEditingController _searchController = TextEditingController();
  List name=[
  "Natnael Getachew",
  "Jonas Blue",
  "Yohanes Gecho",
  "Obera Abebe",
  "Yetmwork Amele",
  'Worku Gzaw',
  "Belay Tewu",
  "Rodrgiz Albirto"
];

List images=[
  "1.jpg",
  "1.jpg",
  "1.jpg",
  "1.jpg",
  "1.jpg",
  "1.jpg",
  "1.jpg",
  "1.jpg",
];

List message=[
  "hey how r u",
  "Hello Mr Getachew",
  "what's up G",
  "akam negiya",
  "hey",
  "selam",
  "endit aberachu",
  "deg nachu"
  "Mimamo"
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171717),
      body: Stack(
        children:[
          Column(
          children: [
           
            SizedBox(
              
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(6),
                children: [
                  TextButton(
                    onPressed: (){}, 
                    child: const Text(
                      'Message',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
      
                      ),
                    )
                  ),
                  SizedBox(width: 35,),
                  TextButton(
                    onPressed: (){}, 
                    child: const Text(
                      'Setting',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
      
                      ),
                    )
                  ), 
                  SizedBox(width: 35,),
                  TextButton(
                    onPressed: (){}, 
                    child: const Text(
                      'Account',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
      
                      ),
                    )
                  ),
                  SizedBox(width: 35,),
                  TextButton(
                    onPressed: (){}, 
                    child: const Text(
                      'Podcast',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
      
                      ),
                    )
                  ),
                ]
                ),
              )
          ],
        ),

        Positioned(
          top: 80,
          left: 0,
          right: 0,
          child:Container(
            height: 220,
           decoration: BoxDecoration(
            
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15)),
               color: Colors.blue,
        
            ),
           child:Column(
            children: [
              Row(
                
                // mainAxisAlignment:M
                children: [
                  SizedBox(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                    
                       scrollDirection: Axis.horizontal,
                       padding: EdgeInsets.all(12),
                      children: [
                        Container(
                          width: 47,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          
                           ),
                          // child: Image(
                           
                          //   image: AssetImage('assets/images/1.jpg')
                          //   ),
                        ),

                         SizedBox(width: 15,),
                          Container(
                          width: 47,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          
                           ),
                          // child: Image(
                           
                          //   image: AssetImage('assets/images/1.jpg')
                          //   ),
                        ),

                         SizedBox(width: 15,), Container(
                          width: 47,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          
                           ),
                          // child: Image(
                           
                          //   image: AssetImage('assets/images/1.jpg')
                          //   ),
                        ),

                         SizedBox(width: 15,), Container(
                          width: 47,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          
                           ),
                          // child: Image(
                           
                          //   image: AssetImage('assets/images/1.jpg')
                          //   ),
                        ),

                         SizedBox(width: 15,), Container(
                          width: 47,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          
                           ),
                          // child: Image(
                           
                          //   image: AssetImage('assets/images/1.jpg')
                          //   ),
                        ),

                         SizedBox(width: 15,), Container(
                          width: 47,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          
                           ),
                          // child: Image(
                           
                          //   image: AssetImage('assets/images/1.jpg')
                          //   ),
                        ),

                         SizedBox(width: 15,), Container(
                          width: 47,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          
                           ),
                          // child: Image(
                           
                          //   image: AssetImage('assets/images/1.jpg')
                          //   ),
                        ),

                         SizedBox(width: 15,), Container(
                          width: 47,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          
                           ),
                          // child: Image(
                           
                          //   image: AssetImage('assets/images/1.jpg')
                          //   ),
                        ),

                         SizedBox(width: 15,), Container(
                          width: 47,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          
                           ),
                          // child: Image(
                           
                          //   image: AssetImage('assets/images/1.jpg')
                          //   ),
                        ),

                         SizedBox(width: 15,), Container(
                          width: 47,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          
                           ),
                          // child: Image(
                           
                          //   image: AssetImage('assets/images/1.jpg')
                          //   ),
                        ),

                         SizedBox(width: 15,), Container(
                          width: 47,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          
                           ),
                          // child: Image(
                           
                          //   image: AssetImage('assets/images/1.jpg')
                          //   ),
                        ),

                         SizedBox(width: 15,),

                         

                      ],
                    ),
                  )
                ],
              )
            ]) ,
          )
          ),
          Positioned(
            top: 160,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,    
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)
                  )
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 700,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: AlwaysScrollableScrollPhysics(),
                      // scrollDirection: Axis.vertical,
                      padding: EdgeInsets.all(12),
                     itemCount: name.length,
                     itemBuilder: (context, index) {
                       return Container(
                        margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[600]
                          ),
                          child: ListTile(
                          onTap: () {
                            Navigator.push(context,
                             MaterialPageRoute(builder:
                             (context)=> Chat()));
                          },
                            leading: Image(
                              image: AssetImage('assets/images/1.jpg')
                              ),
                           
                            title: Text(
                              message[index],
                              style:TextStyle(
                                color: Colors.blue
                              )
                              ),
                              subtitle: Text(
                               name[index],
                                style:TextStyle(
                                  color: Colors.blue[200]
                                ),),
                                trailing: Icon(
                                  Icons.more_horiz,
                                  size: 45,),
                          ),
                          
                        );
                     },
                    ),
                  ),
                 
                ]),
            ),
          )
        ] 
        
      ),
    );
  }
}
