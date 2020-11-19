import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:reef_town/models/classes/producto.dart';

class Individual extends StatefulWidget {


  final Producto articulo;

  Individual({this.articulo});
  @override
  _IndividualState createState() => _IndividualState();
}

class _IndividualState extends State<Individual> {
  int _n = 1;


  void agregarCarrito() {
    Firestore.instance.runTransaction((Transaction transaction) async {
      CollectionReference reference =
      Firestore.instance.collection('usuarios').
      document('276Q0ZDUsIjPZ6O6ZXk0')
          .collection('carrito');

      await reference.add({'nombre': widget.articulo.nombre,
        'precio': widget.articulo.precio,
        'url':widget.articulo.urlFoto,
        'cantidad':_n});
    });
  }

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 1) _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20.0),
            height: 240,
            width: 500,
            child: Image.network(
                widget.articulo.urlFoto),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  widget.articulo.nombre,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '-',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

            Text(
              '\$' + widget.articulo.precio.toString(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
                'Cantidad:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new FloatingActionButton(
                onPressed: minus,
                heroTag: 'btnMinus',
                child: new Icon(
                    const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                    color: Colors.black),
                backgroundColor: Colors.white,
              ),
              Text('$_n', style: new TextStyle(fontSize: 60.0)),
              FloatingActionButton(
                onPressed: add,
                heroTag: 'btnAdd',
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
              ),



            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: (){
                agregarCarrito();
              },
              child: Text('Añadir al carrito', style:
                TextStyle(
                  fontSize: 18,
                ),),
              color: Colors.redAccent,
            ),
          )
        ],
      ),
    );
  }
}
