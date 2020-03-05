import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  bool _esFavorito = true;

  @override
  Widget build(BuildContext context) {


    void _toggleFavorite() {
      setState(() {
        if (_esFavorito) {
          _esFavorito = false;
        } else {
          _esFavorito = true;
        }
      });
    }

    return Card(
      child: ListTile(
        leading: Image.network("https://reeftown.mx/wp-content/uploads/2018/11/Camaro%CC%81n-al-ajillo.png"),
        title: Text("Camaron al ajillo"),
        subtitle: Text("\$200"),
       trailing:
       IconButton(
      icon: (_esFavorito ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
      color: Colors.red[500],
      onPressed: _toggleFavorite,
      ),),
    );
  }
}
