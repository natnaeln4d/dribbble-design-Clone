// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dashboard/chat/chat_service.dart';
import 'package:dashboard/componets/my_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  final String receiverUserEmail;
  final String receiverUserID;
  const Chat({super.key,
  required this.receiverUserEmail,
  required this.receiverUserID});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final TextEditingController _messageController=TextEditingController();
  final ChatService _chatservice=ChatService();
  final FirebaseAuth _firebaseAuth=FirebaseAuth.instance;

  void sendMessage() async{

    if(_messageController.text.isNotEmpty){
      await _chatservice.sendMessage(widget.receiverUserID, _messageController.text);
      _messageController.clear();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.receiverUserEmail),
      ),
      body:Column(children: [
        Expanded(child: _buildMessageList(),),

        _buildMessageInput()

      ],) 
    );
  }

Widget _buildMessageList(){
   return StreamBuilder(
    stream: _chatservice.getMessage(widget.receiverUserID,_firebaseAuth.currentUser!.uid),
    builder: (context, snapshot) {
      if(snapshot.hasError){
        return Text('error'+snapshot.error.toString());
      }

      if(snapshot.connectionState ==ConnectionState.waiting){
          return Text('loading...');
      }
     return ListView(
      children: snapshot.data!.docs.map((documnet) => _buildUserListItem(documnet)).toList(),
     );

    },
   );
}



  Widget _buildUserListItem(DocumentSnapshot document){
    Map<String, dynamic> data=document.data() as Map<String, dynamic>;


    var alignment=(data['senderId']==_firebaseAuth.currentUser!.uid) ? Alignment.centerRight : Alignment.centerLeft;

   return Container(
    alignment: alignment,
    child:Column(
      children: [
        Text(data['senderEmail']),
        Text(data['message'])
      ],
    ) ,
   );

  }


  Widget _buildMessageInput(){
    return Row(
      children: [
        Expanded(child: MyTextField(
          controller: _messageController,
          hint: "Enter Message",
          obscureText: false,)),

          IconButton(onPressed: sendMessage, icon: Icon(Icons.arrow_upward,size: 40,))
      ],
    );
  }
}