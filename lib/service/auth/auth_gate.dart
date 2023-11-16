import 'package:dashboard/hidden_drawer.dart';
import 'package:dashboard/pages/home_page.dart';
import 'package:dashboard/service/auth/login_or_register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Add a loading indicator if needed
            return CircularProgressIndicator();
          } else if (snapshot.hasData && snapshot.data != null) {
            // User is signed in
            return const HiddenDrawer();
          } else {
            // User is not signed in
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
