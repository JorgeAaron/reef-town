import 'package:flutter/material.dart';
import 'package:reef_town/UI/Pages/perfil.dart';
import 'package:reef_town/models/widgets/main_appbar.dart';
import '../menu.dart';
import 'carrito.dart';
import 'favoritos.dart';


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
      case 2: return Carrito();
      case 3: return Perfil();

      break;
      default: return Menu();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: mainBar(context),
        body: CallPage(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0.8,
            onTap: (value) {
              _currentIndex = value;
              setState(() {
              });
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
    );
  }
}
