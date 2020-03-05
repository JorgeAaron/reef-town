import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reef_town/UI/Login/login.dart';
import 'package:reef_town/models/widgets/carousel.dart';
import 'package:reef_town/models/widgets/categorias.dart';
import 'package:reef_town/models/widgets/lista.dart';
import 'package:reef_town/models/widgets/main_appbar.dart';

import 'Pages/carrito.dart';
import 'Pages/favoritos.dart';
import 'Pages/perfil.dart';


class Menu extends StatefulWidget {


  @override
  _MenuState createState() => _MenuState();
}


class _MenuState extends State<Menu> {

  int _currentIndex = 0;

  Widget CallPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return Menu();
      case 1:
        return Carrito();
      case 2:
        return Favoritos();
      case 3:
        return Perfil();
        break;
      default:
        return Menu();
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: mainBar(context),
          body: ListView(
            children: <Widget>[
              slider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Categorías',
                    style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              MaterialButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Perfil()),
                );
              }),
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
              Lista(),
              Lista(),
              Lista(),
              Lista(),
              Lista(),
              Lista(),
              Lista(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
              elevation: 0.8,
              onTap: (value) {
                _currentIndex = value;
                setState(() {});
              },
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Inicio'),
                  backgroundColor: Colors.red,
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.red,
                  icon: Icon(Icons.favorite),
                  title: Text('Favoritos'),
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.red,
                  icon: Icon(Icons.add_shopping_cart),
                  title: Text('Carrito'),
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.red,
                  icon: Icon(Icons.account_circle),
                  title: Text('Perfil'),
                ),
              ]
          ),
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
