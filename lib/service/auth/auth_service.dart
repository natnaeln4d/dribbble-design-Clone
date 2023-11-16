// ignore_for_file: unused_field

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier{

  final FirebaseAuth _firebaseAuth=FirebaseAuth.instance;
  final FirebaseFirestore _firestore=FirebaseFirestore.instance;


  Future<UserCredential> signInWithEmailAndPassword(String email,String password) async{
    try{
    UserCredential userCredential=await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
   
       _firestore.collection('users').doc(userCredential.user!.uid).set(
    {
      'uid':userCredential.user!.uid,
    'email':userCredential.user!.email},SetOptions(merge: true)
    );
    return userCredential;
    } on FirebaseAuthException catch(e){
      throw Exception(e.code);
    }
  }


  Future<UserCredential> signUpWithEmailAndPassword(String email,String password) async{
   try{
    UserCredential result = await _firebaseAuth.createUserWithEmailAndPassword(email: email,password: password);

    _firestore.collection('users').doc(result.user!.uid).set(
    {
      'uid':result.user!.uid,
    'email':result.user!.email}
    );
      return result;
   } on FirebaseAuthException catch(e){
    throw Exception(e.code);
   }
  }

  Future<void> signOut()async {
    try{

      return await FirebaseAuth.instance.signOut();


    }on FirebaseAuthException catch(e){
      throw Exception(e.code);
    }
  }

 
}