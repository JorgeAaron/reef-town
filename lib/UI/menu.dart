
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reef_town/models/classes/producto.dart';
import 'package:reef_town/models/widgets/carousel.dart';
import 'package:reef_town/models/widgets/categorias.dart';
import 'package:reef_town/models/widgets/lista.dart';


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
      home:  Scaffold(
          body: ListView(
            children: <Widget>[

              widget.nombre == null ?
              Center(
                  child: Text('',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),)): Center(
                  child: Text('Bienvenido de nuevo '+widget.nombre,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),)) ,
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
             Column(
                 children: productos.map((producto) => Lista(producto: producto)).toList(),),

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
