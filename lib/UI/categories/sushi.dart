import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reef_town/models/classes/producto.dart';
import 'package:reef_town/widgets/loading.dart';
import 'package:reef_town/widgets/producto_tile.dart';


class ListaSushi extends StatefulWidget {
  @override
  _ListaSushiState createState() => _ListaSushiState();
}

class _ListaSushiState extends State<ListaSushi> {
  @override
  Widget build(BuildContext context) {
    final productos = Provider.of<List<Producto>>(context);

    final String categoria = "sushi";

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
