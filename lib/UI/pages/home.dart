import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reef_town/UI/Pages/perfil.dart';
import 'package:reef_town/models/authentification/database.dart';
import 'package:reef_town/models/classes/carrito.dart';
import 'package:reef_town/models/classes/favoritos_clase.dart';
import 'package:reef_town/models/classes/producto.dart';
import 'package:reef_town/widgets/main_appbar.dart';
import '../menu.dart';
import 'carrito.dart';
import 'favoritos.dart';
import 'lista_carrito.dart';


class Home extends StatefulWidget {

  String value;

  Home({Key key, this.value}) : super (key : key);


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {



  int _currentIndex = 0;


  Widget CallPage(int currentIndex) {



    switch(currentIndex) {
      case 0: return Menu(nombre: widget.value,);
      case 1: return Favoritos();
      case 2: return ListaCarrito();
      case 3: return Perfil();

      break;
      default: return Menu();
    }
  }

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        StreamProvider<List<Producto>>.value(
            value: Database().productos),
        StreamProvider<List<ListaFavoritos>>.value(
            value: Database().favoritos),
        StreamProvider<List<Carritos>>.value(
            value: Database().carritos)
      ],
      child: SafeArea(
        child: Scaffold(
          appBar: MainBar(),
          body: CallPage(_currentIndex),
          bottomNavigationBar: BottomNavigationBar(
              elevation: 0.0,
              onTap: (value) {
                _currentIndex = value;
                setState(() {
                });
              },
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.red[400],),
                  title: Text('Inicio',style: TextStyle(color: Colors.red[400])),
                  backgroundColor: Colors.red[100],
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.red[100],
                  icon: Icon(Icons.favorite, color: Colors.red[400],),
                  title: Text('Favoritos', style: TextStyle(color: Colors.red[400])),
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.red[100],
                  icon: Icon(Icons.add_shopping_cart, color: Colors.red[400]),
                  title: Text('Carrito', style: TextStyle(color: Colors.red[400]),),
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.red[100],
                  icon: Icon(Icons.account_circle, color: Colors.red[400]),
                  title: Text('Perfil', style: TextStyle(color: Colors.red[400])),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
