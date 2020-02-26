import 'package:flutter/material.dart';
import 'package:reef_town/UI/Login/login.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';


void main() => runApp(HomePage());



class HomePage extends StatelessWidget {
  // This widget is the root of your application.

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reef Town App',
      theme: ThemeData(
        fontFamily: 'AbrilFatface',

      ),
      home: MyHomePage(title: 'Menu'),
    );


  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: RaisedButton(
              child: Text("Registro"),
              color: Colors.lightBlueAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                }
            ),
          )


        )
    );
  }



}

