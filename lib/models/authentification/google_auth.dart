import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';



class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlineButton(onPressed:
        () {
      signInWithGoogle().whenComplete(() {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) {
                return Home();
        }),
      );
      }
  }

      ),
    ),
    );
}
