import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:reef_town/UI/pages/home.dart';




final FirebaseAuth _auth = FirebaseAuth.instance;

final GoogleSignIn googleSignIn = GoogleSignIn();


Future<String> signInWithGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await
  googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication=
  await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.idToken);

  final AuthResult  authResult = await _auth.signInWithCredential(credential);
  final FirebaseUser user = authResult.user;

  assert(!user.isAnonymous);
  assert(await user.getIdToken() != null);

  final FirebaseUser currentUser = await
  _auth.currentUser();
  assert(user.uid == currentUser.uid);

  return 'signInWithGoogle succeded: $user';

}

void signOutGoogle() async{
  await googleSignIn.signOut();

  print("User Sign Out");

}

class SignInButton extends StatefulWidget {
  @override
  _SignInButtonState createState() => _SignInButtonState();
}

class _SignInButtonState extends State<SignInButton> {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      color: Colors.lightGreen,
      splashColor: Colors.grey,
      onPressed: () {
      signInWithGoogle().whenComplete(() {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) {
                return Home();
              }),
        );
      });
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
            Image(image: AssetImage("lib/assets/google_logo.png"), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Iniciar sesión con Google',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



