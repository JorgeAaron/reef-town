import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 190.0,
                height: 190.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://i1.wp.com/www.sopitas.com/wp-content/uploads/2019/06/keanu-reeves-por-que-deberia-ser-persona-ano-2019.jpg")
                    )
                )
            ),
            Text("Jorge Leon",
                textScaleFactor: 1.5),
            Text("Correo:",
                textScaleFactor: 1.5),
            Text("jorgeleones09@gmail.com",
                textScaleFactor: 1.5),
            Text("Ubicación:",
                textScaleFactor: 1.5),
            Text("Av.1ra, #807",
                textScaleFactor: 1.5),
          ],
        ),
      ),
    );
  }
}
