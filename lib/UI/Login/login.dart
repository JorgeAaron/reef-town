import 'package:flutter/material.dart';
import 'package:reef_town/UI/Login/mapa.dart';
import 'package:reef_town/UI/Pages/home.dart';
import 'google_button.dart';
import 'location.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _textEditController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 30,
              ),
              child: Text(
                "Bienvenido",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: TextFormField(
                controller: _textEditController,
                decoration: InputDecoration(
                    hintText: 'Ingresa tu nombre de usuario...'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Ingresa tu contraseña...',
                ),
                obscureText: true,
              ),
            ),
            OutlineButton(
              color: Colors.lightBlueAccent,
              splashColor: Colors.grey,
              onPressed: () {
                var route = MaterialPageRoute(
                  builder: (context) => Home(value: _textEditController.text),
                );
                Navigator.of(context).pushReplacement(route);
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              highlightElevation: 0,
              borderSide: BorderSide(color: Colors.grey),
              child: Text('Entrar'),
            ),
            SizedBox(
              height: 15,
            ),
            signInButton(),
            SizedBox(
              height: 20,
            ),
            signInFacebook(),
            SizedBox(
              height: 70,
            ),
            Center(
              child: Text(
                '¿Aún no tienes cuenta?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
