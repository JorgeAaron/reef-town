import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reef_town/models/classes/producto.dart';
import 'package:reef_town/widgets/loading.dart';
import 'package:reef_town/widgets/producto_tile.dart';

class ListaKids extends StatefulWidget {
  @override
  _ListaKidsState createState() => _ListaKidsState();
}

class _ListaKidsState extends State<ListaKids> {
  @override
  Widget build(BuildContext context) {
    final productos = Provider.of<List<Producto>>(context);

    final String categoria = "kids";

    if(productos == null) {
      return Loading();
    }

    return ListView.builder(
        shrinkWrap: true,
        itemCount: productos.length,
        itemBuilder: (context, index) {
          return ProductoTile(producto: productos[index], categoria: categoria,);
        }
    );

  }
}
