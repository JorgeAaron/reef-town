import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reef_town/UI/Pages/home.dart';
import 'UI/Login/authenticate.dart';
import 'models/authentification/database.dart';
import 'models/classes/carrito.dart';
import 'models/classes/favoritos_clase.dart';
import 'models/classes/producto.dart';
import 'models/classes/user.dart';

class Wrapper extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    if (user == null) {
      return Authentication();

    } else {
      return Home();
    }
  }
}


