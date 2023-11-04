// ignore_for_file: prefer_const_constructors



import 'package:dashboard/Screen/main_screen.dart';
import 'package:dashboard/firebase_options.dart';
import 'package:dashboard/hidden_drawer.dart';
import 'package:dashboard/pages/home_page.dart';
import 'package:dashboard/service/auth/auth_gate.dart';
import 'package:dashboard/service/auth/auth_service.dart';
import 'package:dashboard/service/auth/login_or_register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    ChangeNotifierProvider(
      create: (context)=>AuthService(),
      child: MyApp(),
      )
  );
} 

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner: false,
         
    
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
    
      home: HiddenDrawer(),
    );
    
  }
}