// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:html';

import 'package:dashboard/componets/my_button.dart';
import 'package:dashboard/componets/my_text_field.dart';
import 'package:dashboard/service/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

  void signUp() async{
try{

  final authService=Provider.of<AuthService>(context,listen: false);

  // await authService.s

} catch(e){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));

}


  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: SafeArea(
          child: SafeArea(
              child: SingleChildScrollView(
              child: Center(
                child: Padding(
                      
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
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
                    )
              ),
            ),
          )
       ),
    );
  }
}