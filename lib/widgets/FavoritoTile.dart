import 'package:flutter/material.dart';
import 'package:reef_town/UI/Pages/articulo_individual.dart';
import 'package:reef_town/models/classes/favoritos_clase.dart';



class FavoritoTile extends StatefulWidget {

  final ListaFavoritos producto;

  FavoritoTile({this.producto});

  @override
  _FavoritoTileState createState() => _FavoritoTileState();
}

class _FavoritoTileState extends State<FavoritoTile> {
  // bool _esFavorito = null;


  @override
  Widget build(BuildContext context) {

    return Card(
      color: Colors.red[100],
      child: ListTile(
        onTap: () {
        },
        leading: Image.network(widget.producto.urlFavorito),
        title: Text(widget.producto.nombreFavorito),
        subtitle: Text("\$"+widget.producto.precioFavorito.toString(),
      ),
      ),
    );
  }
}


