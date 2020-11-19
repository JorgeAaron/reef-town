import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;

class SignInFacebook extends StatefulWidget {
  @override
  _SignInFacebookState createState() => _SignInFacebookState();
}

class _SignInFacebookState extends State<SignInFacebook>{
  bool _isLoggedIn = false;
  Map userProfile;
  final facebookLogin = FacebookLogin();

  loginWithFB() async{


    final result = await facebookLogin.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final token = result.accessToken.token;
        final graphResponse = await http.get('https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=${token}');
        final profile = JSON.jsonDecode(graphResponse.body);
        print(profile);
        setState(() {
          userProfile = profile;
          _isLoggedIn = true;
        });
        break;

      case FacebookLoginStatus.cancelledByUser:
        setState(() => _isLoggedIn = false );
        break;
      case FacebookLoginStatus.error:
        setState(() => _isLoggedIn = false );
        break;
    }

  }

  FacebookLogin fblogin = new FacebookLogin();
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: ShapeDecoration(color: Color(0xff4267B2),  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),),
      child: OutlineButton(
        splashColor: Colors.grey,
        onPressed: () {
          loginWithFB();
/*          fblogin
              .logIn(['email', 'public_profile'])
              .then((result) {
            switch(result.status) {
              case FacebookLoginStatus.loggedIn:
                FirebaseAuth.instance.signInWithCredential
                  (FacebookAuthProvider
                .getCredential(
                  accessToken: result.accessToken.token)
                );

            }

          })
              .catchError((e) {
            print(e);
          });
,*/
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        highlightElevation: 0,
        borderSide: BorderSide(color: Colors.grey),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage("lib/assets/fb.png"), height: 35.0),
              Padding(
                padding:EdgeInsets.only(left: 10),
                child: Text(
                  'Iniciar sesión con Facebook',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


