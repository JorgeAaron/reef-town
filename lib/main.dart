import 'package:flutter/material.dart';
import 'package:reef_town/UI/Login/login.dart';
import 'package:reef_town/UI/menu.dart';
import 'package:flutter/services.dart';



void main() {
  runApp(HomePage());}



class HomePage extends StatelessWidget {
  // This widget is the root of your application.

  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reef Town App',
      theme: ThemeData(
        fontFamily: 'AbrilFatface',

      ),

      home: Menu(),
    );

  }
}





