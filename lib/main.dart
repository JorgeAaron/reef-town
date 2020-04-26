import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reef_town/models/authentification/auth.dart';
import 'package:reef_town/wrapper.dart';
import 'package:provider/provider.dart';

import 'models/classes/user.dart';



void main() {
  runApp(HomePage());}



class HomePage extends StatelessWidget {
  // This widget is the root of your application.

  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black, // navigation bar color
      statusBarColor: Colors.red[600], // status bar color
    ));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Reef Town App',
        theme: ThemeData(
          fontFamily: 'AbrilFatface',
        ),

        home: Wrapper(),
      ),
    );

  }
}





