import 'package:flutter/material.dart';
import 'package:reef_town/models/classes/favoritos_clase.dart';
import 'package:reef_town/models/widgets/botttom_bar.dart';
import 'package:reef_town/models/widgets/favoritos_template.dart';
import 'package:reef_town/models/widgets/lista.dart';
import 'package:reef_town/models/widgets/main_appbar.dart';


class Favoritos extends StatefulWidget {
  ListaFavoritos lista = new ListaFavoritos();
  @override
  _FavoritosState createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {


  @override
  Widget build(BuildContext context) {
    return ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text("Favoritos",
              style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold),),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
       children: widget.lista.favoritos.map((producto) => FavoritoTemplate(articulo: producto)).toList(),),
            ],

    );
  }
}
