import 'package:flutter/material.dart';
import 'package:reef_town/UI/Login/login.dart';


  Widget mainBar(context) {
    return AppBar(
      backgroundColor: Colors.red,
      title: Text(
        'Reef Town',
        style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
      actions: <Widget>[
        MaterialButton(
          elevation: 2,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
          },
          child: Text(
            'Iniciar sesión',
          ),
        ),
      ],

    );


  }

