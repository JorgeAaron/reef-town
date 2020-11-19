import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:reef_town/UI/Pages/carrito.dart';
import 'package:reef_town/models/classes/carrito.dart';
import 'package:reef_town/models/classes/favoritos_clase.dart';
import 'package:reef_town/models/classes/producto.dart';
import 'package:reef_town/widgets/productos_lista.dart';

class Database {

  final String uid;

  Database({this.uid});

  final CollectionReference productCollection = Firestore.instance.collection(
    'productos'
  ).document('276Q0ZDUsIjPZ6O6ZXk0').collection('tacos');

  final CollectionReference usuarioCollection = Firestore.instance.collection(
      'usuarios');

  Future agregarDatosUsuario(String nombre, int numero, String correo,
      String colonia, String calle, String numeroCasa, String referencia) async {
    return await usuarioCollection.document(uid).setData({
      'nombre' : nombre,
      'numero' : numero,
      'correo' : correo,
      'colonia': colonia,
      'calle'  : calle,
      'numCasa': numeroCasa,
      'referencia' : referencia
    });
  }



  List<Producto> _productsListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Producto(
        nombre: doc.data['nombre'] ?? '',
        urlFoto: doc.data['url'] ?? '',
        precio: doc.data['precio'] ?? 0,
        favorito: doc.data['favorito'] ?? true,
        categoria: doc.data['categoria'] ?? ''
      );
    }).toList();
  }

  Stream<List<Producto>> get productos{
    return productCollection.snapshots().map(_productsListFromSnapshot);
  }



  CollectionReference reference =
  Firestore.instance.collection('usuarios').
  document('276Q0ZDUsIjPZ6O6ZXk0')
      .collection('favoritos');

  List<ListaFavoritos> _favoritesListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return ListaFavoritos(
        precioFavorito: doc.data['precio'] ?? '',
        nombreFavorito: doc.data['nombre'] ?? '',
        urlFavorito: doc.data['url'] ?? 0,
        favorito: doc.data['favorito'] ?? true,
      );
    }).toList();
  }

  Stream<List<ListaFavoritos>> get favoritos{
    return reference.snapshots().map(_favoritesListFromSnapshot);
  }



  CollectionReference carritoCollection =
  Firestore.instance.collection('usuarios').
  document('276Q0ZDUsIjPZ6O6ZXk0')
      .collection('carrito');

  List<Carritos> _carritoListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Carritos(
        precio: doc.data['precio'] ?? '',
        nombre: doc.data['nombre'] ?? '',
        urlFoto: doc.data['url'] ?? 0,
        cantidad: doc.data['cantidad'] ?? 1,
      );
    }).toList();
  }


  Stream<List<Carritos>> get carritos{
    return carritoCollection.snapshots().map(_carritoListFromSnapshot);
  }



/*Stream <DocumentSnapshot>get userData {
     return
  }*/

}