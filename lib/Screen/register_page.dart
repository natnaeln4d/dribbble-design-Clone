// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dashboard/componets/my_button.dart';
import 'package:dashboard/componets/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()?onTap;
  const RegisterPage({
    super.key,
  required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
 final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final confirmPasswordController=TextEditingController();

  void signUp(){

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
                    "Let's create an account for you!",
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
                        const SizedBox(height: 10,),
                       MyTextField(
                      controller:confirmPasswordController,
                       hint: "confirm password", 
                       obscureText:true
                       ),
                       const SizedBox(height: 25,),
                       MyButton(onTap: signUp, text: 'Sign Up'),

                       const SizedBox(height: 50,),

                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already member?'),
                          const SizedBox(width: 4,),
                          GestureDetector(
                            onTap: widget.onTap,
                            child: Text("Login Now",
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