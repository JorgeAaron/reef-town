import 'package:flutter/material.dart';
import 'package:reef_town/UI/Login/mapa.dart';
import 'package:reef_town/UI/Pages/home.dart';
import 'package:reef_town/models/authentification/auth.dart';
import 'package:reef_town/widgets/loading.dart';
import 'facebook_button.dart';
import 'google_button.dart';
import 'location.dart';
/*import 'dart:convert';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;*/

class Login extends StatefulWidget {

  final Function toggleView;

  Login({ this.toggleView });

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool isLoggedIn = false;
  String error = '';
  String contrasena = '';

  String correo = '';

  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  bool loading = false;

 /* void initiateFacebookLogin() async{
    var login = FacebookLogin();
    var result = await login.logIn(['email']);
    switch(result.status) {
      case FacebookLoginStatus.error:
        print("Surgio un error");
        break;
      case FacebookLoginStatus.cancelledByUser:
        print("Cancelado por el usuario");
        break;
      case FacebookLoginStatus.loggedIn:
        onLoginStatusChange(true);
        break;
    }
  }

  void onLoginStatusChange(bool isLoggedIn) {
     setState(() {
        this.isLoggedIn = isLoggedIn;

  });

  }

  void getUserInfo(FacebookLoginResult result) async {
    final token = result.accessToken.token;
    final graphResponse = await http.get('https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=${token}');
    final profile = json.decode(graphResponse.body);
  }
*/

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:  Colors.white,
          elevation: 0.0,
          title: Text('Login'),
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
          body:  Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            child: Form(
              key: _formKey,
              child: Column(
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
                          setState(() => correo = val);
                        },
                        decoration: InputDecoration(
                            hintText: 'Ingresa tu nombre de usuario...'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                      child: TextFormField(
                        validator: (val) => val.isEmpty ? 'Introduce una contraseña': null,
                        onChanged: (val) {
                          setState(() => contrasena = val);
                        },
                        decoration: InputDecoration(
                          hintText: 'Ingresa tu contraseña...',
                        ),
                        obscureText: true,
                      ),
                    ),
                    OutlineButton(
                      color: Colors.lightBlueAccent,
                      splashColor: Colors.grey,
                      onPressed: () async{
                        if( _formKey.currentState.validate()) {
                          setState(() => loading = true);
                          dynamic result = await _auth.signInWithEmailAndPassword(correo, contrasena);
                          if(result == null) {
                            setState(() {
                              error = 'Correo o contraseña incorrectas.';
                              loading = false;
                            });
                        }
                        /*var route = MaterialPageRoute(
                          builder: (context) => Home(),
                        );
                        Navigator.of(context).pushReplacement(route);*/
                      }
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
                     error
                    ),
                    SignInButton(),
                    SizedBox(
                      height: 20,
                    ),
                    isLoggedIn?
                    Text('funciona') :signInFacebook(),
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
          ),
            ),
    );
  }
}
