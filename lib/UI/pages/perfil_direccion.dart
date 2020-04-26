import 'package:flutter/material.dart';

class Direccion extends StatefulWidget {
  @override
  _DireccionState createState() => _DireccionState();
}

class _DireccionState extends State<Direccion> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      Text("Colonia: ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Calle o avenida: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ), ),
                Card(
                  child: ListTile(
                    title: Text("Av.1ra",
                        textScaleFactor: 1.2),
                    trailing: Icon(Icons.edit),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Número de casa:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ), ),
                Card(
                  child: ListTile(
                    title: Text("807",
                        textScaleFactor: 1.2),
                    trailing: Icon( Icons.edit),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Detalle:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                SizedBox(
                  height: 10,
                ),
                Card(
                  child: ListTile(
                    title: Text("Reja negra a espaldas de escuela Julio Villa",
                      textScaleFactor: 1.2,
                    ),
                    trailing: Icon(Icons.edit),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
