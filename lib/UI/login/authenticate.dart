import 'package:flutter/material.dart';
import 'package:reef_town/UI/Login/login.dart';
import 'package:reef_town/UI/Login/register.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {

 bool ShowSignIn = false;

 void toggleView() {
   setState(() => ShowSignIn = !ShowSignIn);
 }

  @override
  Widget build(BuildContext context) {
    if(ShowSignIn) {
        return Login(toggleView: toggleView);
    } else {
      return Registro(toggleView: toggleView);
    }
  }
}
