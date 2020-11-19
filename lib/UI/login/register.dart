import 'package:flutter/material.dart';
import 'package:reef_town/UI/Pages/home.dart';
import 'package:reef_town/models/authentification/auth.dart';
import 'package:reef_town/widgets/loading.dart';

import 'facebook_button.dart';
import 'google_button.dart';

class Registro extends StatefulWidget {

  final Function toggleView;


  Registro({ this.toggleView});


  @override
  _RegistroState createState() => _RegistroState();
}


class _RegistroState extends State<Registro> {

  String nombre = '';

  String correo = '';

  String contrasena = '';

  String error = '';

 final AuthService _auth = AuthService();
 final _formKey = GlobalKey<FormState>();
 bool loading = false;

  @override
  Widget build(BuildContext context) {
    return  loading ? Loading() : SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text('Registrate'),
          actions: <Widget>[
            FlatButton.icon(
             icon: Icon(Icons.person),
              label: Text('Sign In'),
              onPressed: () {
               widget.toggleView();
              }
            )
          ],
        ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
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
                      validator: (val) => val.isEmpty ? 'Introduce un  nombre': null,
                      onChanged: (val) {
                        setState(() => nombre = val);
                      },
                      decoration: InputDecoration(
                          hintText: 'Tu nombre aqui...'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                    child: TextFormField(
                      validator: (val) => val.isEmpty ? 'Introduce un correo': null,
                      onChanged: (val) {
                        setState(() => correo = val);
                      },
                      decoration: InputDecoration(
                        hintText: 'Ingresar correo...',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                    child: TextFormField(
                      validator: (val) => val.length < 6 ? 'Entra una contraseña'+
                          'con una longitud mayor a 6 caracteres' : null,
                      decoration: InputDecoration(
                        hintText: 'Ingresar contraseña...',
                      ),
                      obscureText: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                    child: TextFormField(
                      onChanged: (val) {
                        setState(() => contrasena = val);
                      },
                      decoration: InputDecoration(
                        hintText: 'Ingresar contraseña...',
                      ),
                      obscureText: true,
                    ),
                  ),

                  OutlineButton(
                    color: Colors.lightBlueAccent,
                    splashColor: Colors.grey,
                    onPressed: () async {
                      if(_formKey.currentState.validate())  {
                          dynamic result = await _auth.registerWithEmailAndPassword
                            (correo, contrasena);
                          if(result == null) {
                            setState(() => error = 'Por favor provee un correo');
                          }
                      }
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
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    error,
                  ),
                  SignInButton(),
                  SizedBox(
                    height: 20,
                  ),
                  SignInFacebook(),
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
            ),
          )),
    );
  }
}
