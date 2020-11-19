import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:reef_town/UI/Pages/articulo_individual.dart';
import 'package:reef_town/models/classes/producto.dart';


class ProductoTile extends StatefulWidget {


  final Producto producto;
  final String categoria;

  ProductoTile({this.producto, this.categoria});

  @override
  _ProductoTileState createState() => _ProductoTileState();
}

class _ProductoTileState extends State<ProductoTile> {
 // bool _esFavorito = null;


  @override
  Widget build(BuildContext context) {
    void _toggleFavorite() {
      setState(() {
        if (widget.producto.favorito) {
          widget.producto.favorito = false;
        } else {
          widget.producto.favorito = true;

          Firestore.instance.runTransaction((Transaction transaction) async {
            CollectionReference reference =
            Firestore.instance.collection('usuarios').
            document('276Q0ZDUsIjPZ6O6ZXk0')
                .collection('favoritos');

            await reference.add({'nombre': widget.producto.nombre,
              'precio': widget.producto.precio,
              'url': widget.producto.urlFoto});
          });
        }
      });
    }

    while(widget.categoria == widget.producto.categoria) {
      return Card(
        child: ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Individual(articulo: widget.producto,)),
            );
          },
          leading: Image.network(widget.producto.urlFoto),
          title: Text(widget.producto.nombre),
          subtitle: Text("\$" + widget.producto.precio.toString()),
          trailing:
          IconButton(
            icon: (widget.producto.favorito ? Icon(Icons.favorite) : Icon(
                Icons.favorite_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),),
      );
    }
  }
}




