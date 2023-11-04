// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dashboard/componets/my_button.dart';
import 'package:dashboard/componets/my_text_field.dart';
import 'package:dashboard/service/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  final void Function()?onTap;

  const LoginPage({super.key,
  required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  final emailController=TextEditingController();
  final passwordController=TextEditingController();

  void signIn() async{
    final authService=Provider.of<AuthService>(context,listen: false);

    try{
      await authService.signInWithEmailAndPassword(
        emailController.text,
        passwordController.text
        ); 



    }catch(e){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString(),
    ),
    ),
    );
    }

  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: SafeArea(
        child:Center(
          child: Padding(
            
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50,),
                Icon(
                  Icons.message,
                  size: 80,
                  color: Colors.white,
                  
                  ),
                   const SizedBox(height: 50,),
                  const Text(
                    "Welcome back you\'ve been missed",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),
                    ),
                     const SizedBox(height: 25,),
                    MyTextField(
                      controller:emailController,
                       hint: "email", 
                       obscureText:false
                       ),
                        const SizedBox(height: 10,),
                       MyTextField(
                      controller:passwordController,
                       hint: "password", 
                       obscureText:true
                       ),
                       const SizedBox(height: 25,),
                       MyButton(onTap: signIn, text: 'Login'),

                       const SizedBox(height: 50,),

                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Not member?'),
                          const SizedBox(width: 4,),
                          GestureDetector(
                            onTap:widget.onTap,
                            child:const Text("Register Now",
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),
                          )
                        ],
                       )
              ],
            ),
          ),
        ) ),
    );
  }
}