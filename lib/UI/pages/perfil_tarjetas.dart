import 'package:flutter/material.dart';


class TarjetasPerfil extends StatefulWidget {
  @override
  _TarjetasPerfilState createState() => _TarjetasPerfilState();
}

class _TarjetasPerfilState extends State<TarjetasPerfil> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.add), onPressed: null),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:  EdgeInsets.only( top: 20, right: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://i1.wp.com/www.sopitas.com/wp-content/uploads/2019/06/keanu-reeves-por-que-deberia-ser-persona-ano-2019.jpg")
                              )
                          )
                      ),
                SizedBox(
                  height: 10,
                ),
                Text("Tarjetas:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                SizedBox(
                  height: 10,
                ),
                Card(
                  child: ListTile(
                    title: Text("La tarjeta de tu mama",
                      textScaleFactor: 1.2,
                    ),
                    subtitle: Text("*************4434"),
                    trailing: Icon(Icons.cancel),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    ),
    ),
    );
  }
}
