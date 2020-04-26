import 'package:flutter/material.dart';
import 'package:reef_town/UI/Login/login.dart';
import 'package:reef_town/models/authentification/auth.dart';


  class MainBar extends StatelessWidget with PreferredSizeWidget{

    final AuthService _auth = AuthService();

    Widget build(BuildContext context) {
      return  AppBar(
          backgroundColor: Colors.red[400],
          elevation: 0.0,
          title: Text(
            'Reef Town',
            style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () async {
                  await _auth.signOut();
                },
                icon: Icon(Icons.person),
                label: Text('Cerrar sesión'))
          ],
      );
    }

    @override
    Size get preferredSize => Size.fromHeight(kToolbarHeight);
  }


