// ignore_for_file: unnecessary_new

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dashboard/models/message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatService extends ChangeNotifier{


  final FirebaseAuth _firebaseAuth=FirebaseAuth.instance;
  final FirebaseFirestore _firestore=FirebaseFirestore.instance;


  Future<void> sendMessage(String receiverId,String data) async{

    final String currentUserId=_firebaseAuth.currentUser!.uid;
    final String currentUserEmail=_firebaseAuth.currentUser!.email.toString();
    final Timestamp timestamp=Timestamp.now();

    Message message=new Message(
      senderId: currentUserId, 
      sendEmail: currentUserEmail,
      receiverId: receiverId, 
      message: data, 
      timestamp: timestamp);

   List<String> ids  =[currentUserEmail,receiverId];
   ids.sort();

   String chatRoomId=ids.join("_");

   await _firestore.collection('chat_rooms').doc(chatRoomId).collection('message').add(message.toMap());

  }


  Stream<QuerySnapshot> getMessage(String userId,String otherUserId){

    List<String> ids=[userId,otherUserId];

    ids.sort();

    String chatRoomId=ids.join("_");

    return _firestore.collection('chat_rooms').doc(chatRoomId).collection('message').orderBy('timestamp',descending: false).snapshots();

  }
}