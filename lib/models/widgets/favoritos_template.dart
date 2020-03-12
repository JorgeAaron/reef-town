import 'package:flutter/material.dart';
import 'package:reef_town/UI/Pages/articulo_individual.dart';
import 'package:reef_town/models/classes/favoritos_clase.dart';


class FavoritoTemplate extends StatefulWidget {

  final ListaFavoritos articulo;

  FavoritoTemplate({this.articulo});

  @override
  _FavoritoTemplateState createState() => _FavoritoTemplateState();
}

class _FavoritoTemplateState extends State<FavoritoTemplate> {




  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Individual()),
          );
        },
        leading: Image.network(widget.articulo.urlFavorito),
        title: Text(widget.articulo.nombreFavorito),
        subtitle: Text("\$"+widget.articulo.toString()),
      ),
    );
  }
}
