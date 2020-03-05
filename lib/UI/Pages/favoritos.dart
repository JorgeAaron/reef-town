import 'package:flutter/material.dart';
import 'package:reef_town/models/widgets/lista.dart';


class Favoritos extends StatefulWidget {
  @override
  _FavoritosState createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 4),
              child: Text("Favoritos",
              style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold),),
            ),
            Lista(),
            Lista(),
            Lista(),
            Lista(),
          ],

        ),
      ),
    );
  }
}
