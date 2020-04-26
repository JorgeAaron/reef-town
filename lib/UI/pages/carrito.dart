import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reef_town/models/classes/carrito.dart';

class Carrito extends StatefulWidget {
  @override
  _CarritoState createState() => _CarritoState();

  final Carritos producto;

  Carrito({this.producto});
}

class _CarritoState extends State<Carrito> {



  @override
  Widget build(BuildContext context) {

    int subtotal = widget.producto.cantidad * widget.producto.precio;



    return  Card(
      child: ListTile(
        onTap: () {
        },
        leading: Image.network(widget.producto.urlFoto),
        title: Text(widget.producto.nombre),
        subtitle: Text(widget.producto.cantidad.toString()+"x \$"+widget.producto.precio.toString(),
        ),
        trailing: Text("\$" +subtotal.toString()),
      ),
    );

  }












}