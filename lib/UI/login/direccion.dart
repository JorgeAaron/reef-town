import 'package:flutter/material.dart';
import 'package:reef_town/UI/Pages/home.dart';

class Direccion extends StatefulWidget {
  @override
  _DireccionState createState() => _DireccionState();
}

class _DireccionState extends State<Direccion> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text('Registrate'),
          actions: <Widget>[
            FlatButton.icon(
                icon: Icon(Icons.person),
                label: Text('Sign In'),
                onPressed: () {})
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                  child: Text(
                    "Ingresa direccion:",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Colonia...'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Calle...',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Ingresar contraseña...',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Ingresar contraseña...',
                    ),
                    obscureText: true,
                  ),
                ),
                OutlineButton(
                  color: Colors.lightBlueAccent,
                  splashColor: Colors.grey,
                  onPressed: () {
                    var route = MaterialPageRoute(
                      builder: (context) => Home(),
                    );
                    Navigator.of(context).pushReplacement(route);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  highlightElevation: 0,
                  borderSide: BorderSide(color: Colors.grey),
                  child: Text('Entrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
