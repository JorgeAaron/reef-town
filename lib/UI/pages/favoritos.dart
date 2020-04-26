import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reef_town/models/classes/favoritos_clase.dart';
import 'package:reef_town/widgets/FavoritoTile.dart';
import 'package:reef_town/widgets/favoritos_template.dart';
import 'package:reef_town/widgets/loading.dart';
import 'package:reef_town/widgets/producto_tile.dart';



class Favoritos extends StatefulWidget {
  ListaFavoritos lista = new ListaFavoritos();
  @override
  _FavoritosState createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {




  @override
  Widget build(BuildContext context) {

    final productos = Provider.of<List<ListaFavoritos>>(context);

    if(productos == null) {
      return Loading();
    }

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
    ListView.builder(
    shrinkWrap: true,
    itemCount: productos.length,
    itemBuilder: (context, index) {
    return FavoritoTile(producto: productos[index]);
    }
    ),
  ]
    );
  }
}
