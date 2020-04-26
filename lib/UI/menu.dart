
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reef_town/models/classes/producto.dart';
import 'package:reef_town/widgets/carousel.dart';
import 'package:reef_town/widgets/categorias.dart';
import 'package:reef_town/widgets/lista.dart';
import 'package:reef_town/widgets/productos_lista.dart';


import 'Pages/favoritos.dart';


class Menu extends StatefulWidget {

  final String nombre;

  Menu({this.nombre});


  @override
  _MenuState createState() => _MenuState();
}


class _MenuState extends State<Menu> {

  List<Producto> productos = [
    Producto(nombre: 'Machaca', precio: 115,
        urlFoto: 'https://reeftown.mx/wp-content/uploads/2018/11/Machaca-300x300.png',
        favorito: false),
    Producto(nombre: 'Wafles', precio: 80,
        urlFoto: 'https://reeftown.mx/wp-content/uploads/2018/04/Wafles-300x300.png',
    favorito: false),
    Producto(nombre: 'Huevos al gusto', precio: 90,
        urlFoto: 'https://reeftown.mx/wp-content/uploads/2018/04/Huevos-al-gusto-300x300.png',
    favorito: false),
    Producto(nombre: 'Hot cakes', precio: 80,
        urlFoto: 'https://reeftown.mx/wp-content/uploads/2018/04/Hot-cakes-300x300.png',
    favorito: false),

  ];
  




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  //      home:  StreamProvider<List<Producto>>.value(
    //    value: Database().productos,

      home:Scaffold(
              body: ListView(
                children: <Widget>[
                  slider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Categorías',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                  categorias(context),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Más vendidos',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                 /*
                 Column(
                     children: productos.map((producto) => Lista(producto: producto)).toList(),),
                  */
                  ListaProductos()
                ],
              ),
          ),
    );
  }

  final category = Container(
    height: 60,
    width: 44,
    decoration: BoxDecoration(
        color: Colors.redAccent
    ),
  );

}
