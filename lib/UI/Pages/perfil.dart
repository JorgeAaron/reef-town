import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reef_town/models/widgets/botttom_bar.dart';
import 'package:reef_town/models/widgets/main_appbar.dart';


class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
                    Text("Jorge Leon",
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
              Text("Número telefónico:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ), ),
              Card(
                child: ListTile(
                  title: Text("622-145-3169",
                      textScaleFactor: 1.2),
                  trailing: Icon(Icons.edit),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Correo:",
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 20,
                   ), ),
              Card(
                child: ListTile(
                  title: Text("jorgeleones09@gmail.com",
                      textScaleFactor: 1.2),
                  trailing: Icon( Icons.edit),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Ubicación:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
              SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  title: Text("Av.1ra, #807",
                      textScaleFactor: 1.2,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
