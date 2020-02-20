import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 25,
                  bottom: 50,
                ),
                child: Text(
                  "Registro",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: MaterialButton(
                  color: Colors.redAccent,
                  child: Text("Ingresar con cuenta de Google"),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 70,
              ),
              MaterialButton(
                  color: Colors.redAccent,
                  child: Text("Salir de cuenta de Gooogle"),
                  onPressed: () {}
                  ),
              MaterialButton(
                child: Text("        Ingresar con Facebook       "),
                color: Colors.lightBlueAccent,
                onPressed: () {},
              ),
              SizedBox(
                height: 70,
              ),
              MaterialButton(
                child: Text("Localiza tu ubicacion con Google Maps"),
                color: Colors.lightGreen,
                onPressed: () {},
              )
            ],
          )),
    );
  }
}
