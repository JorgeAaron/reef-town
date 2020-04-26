import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:reef_town/models/classes/producto.dart';
import 'package:reef_town/widgets/loading.dart';
import 'package:reef_town/widgets/producto_tile.dart';


class ListaProductos extends StatefulWidget {
  @override
  _ListaProductosState createState() => _ListaProductosState();
}

class _ListaProductosState extends State<ListaProductos> {
  @override
  Widget build(BuildContext context) {
    final productos = Provider.of<List<Producto>>(context);

    if(productos == null) {
      return Loading();
    }
    return ListView.builder(
        shrinkWrap: true,
        itemCount: productos.length,
        itemBuilder: (context, index) {
          return ProductoTile(producto: productos[index]);
        }
    );

  }
}
