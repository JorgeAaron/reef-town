import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:reef_town/UI/categories/aperitivos.dart';
import 'package:reef_town/UI/categories/burros.dart';
import 'package:reef_town/UI/categories/cocteles.dart';
import 'package:reef_town/UI/categories/desayunos.dart';
import 'package:reef_town/UI/categories/fit.dart';
import 'package:reef_town/UI/categories/hamburguesas.dart';
import 'package:reef_town/UI/categories/otros.dart';
import 'package:reef_town/UI/categories/pescado.dart';
import 'package:reef_town/UI/categories/postres.dart';
import 'package:reef_town/UI/categories/pulpo.dart';
import 'package:reef_town/UI/categories/reef_kids.dart';
import 'package:reef_town/UI/categories/sushi.dart';
import 'package:reef_town/UI/categories/tacos.dart';
import 'package:reef_town/UI/categories/tostadas.dart';

Widget categorias(context) {
  return Stack(
    children: <Widget>[ SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListaDesayunos()),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'lib/assets/desayunos.png'
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                            color: Colors.lightGreen,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text('Desayunos'),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListaAperitivos()),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'lib/assets/pollo.png'
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                            color: Colors.lightGreen,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text('Aperitivos'),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListaCocteles()),
                          );
                        },
                        child: Container(
                            //Image.asset('assets/icons8-prawn-50.png'),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'lib/assets/coctel.png'
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                            color: Colors.lightGreen,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text('Cocteles'),
                    ],

                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListaTostadas()),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'lib/assets/caldos.png'
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                            color: Colors.lightGreen,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text('Tostadas'),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListaTacos()),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/tacos.png'
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                            color: Colors.lightGreen,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text('Tacos'),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListaBurros()),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'lib/assets/burros.png'
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                            color: Colors.lightGreen,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text('Burros'),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListaPescado()),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/pescado.png'
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                            color: Colors.lightGreen,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text('Pescado'),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ListaPulpo()),
                            );
                          },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                          
                            color: Colors.lightGreen,
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage(
                              'lib/assets/pulpo.png'
                            ))
                          ),
                        ),
                      ),
                      Text('Pulpo'),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListaOtros()),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/otros.png'
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                            color: Colors.lightGreen,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text('Otros'),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListaHam()),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'lib/assets/hamburguesas.png'
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                            color: Colors.lightGreen,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text('Hamburguesas'),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListaKids()),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'lib/assets/kids.png'
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                            color: Colors.lightGreen,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text('Reef Kids'),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListaFit()),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'lib/assets/fit.png'
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                            color: Colors.lightGreen,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text('Fit'),
       ]
    ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ListaSushi()),
                              );
                            },
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/sushis.png'
                                  ),
                                  fit: BoxFit.scaleDown,
                                ),
                                color: Colors.lightGreen,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Text('Sushi'),
                        ],
                      ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListaPostres()),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/hotcakes.png'
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                            color: Colors.lightGreen,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text('Postres'),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ]
            ),
    ),
      Padding(
        padding: const EdgeInsets.only(left: 310, top: 5),
        child: Container(

            alignment: Alignment.center,
            height: 60,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
            child: Icon(Icons.arrow_forward_ios)),
      ),
]
  );
}

