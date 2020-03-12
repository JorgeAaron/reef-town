import 'package:flutter/material.dart';
import 'package:reef_town/UI/Pages/articulo_individual.dart';
import 'package:reef_town/UI/Pages/favoritos.dart';
import 'package:reef_town/models/classes/favoritos_clase.dart';
import 'package:reef_town/models/classes/producto.dart';

class Lista extends StatefulWidget {
  final Producto producto;

  Lista({this.producto});

  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {


  bool _esFavorito = true;

  @override
  Widget build(BuildContext context) {


    void _toggleFavorite() {
      setState(() {
        if (widget.producto.favorito) {
          widget.producto.favorito= false;
        } else {
          widget.producto.favorito = true;
          ListaFavoritos lista = new ListaFavoritos(nombreFavorito: widget.producto.nombre,precioFavorito: widget.producto.precio
              ,urlFavorito: widget.producto.urlFoto);

          lista.favoritos.add(lista);
        }
      });
    }

    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Individual(articulo: widget.producto,)),
          );
        },
        leading: Image.network(widget.producto.urlFoto),
        title: Text(widget.producto.nombre),
        subtitle: Text("\$"+widget.producto.precio.toString()),
       trailing:
       IconButton(
      icon: (widget.producto.favorito ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
      color: Colors.red[500],
      onPressed: _toggleFavorite,
      ),),
    );
  }
}
