import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:reef_town/UI/Pages/perfil.dart';

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
                      Container(
                        child: Icon(
                          FontAwesome5Solid.hamburger,

                        ),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          shape: BoxShape.circle,

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
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'lib/assets/icons8-prawn-50.png'
                            ),
                            fit: BoxFit.scaleDown,
                          ),
                          color: Colors.lightGreen,
                          shape: BoxShape.circle,
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
                      Container(
                          //Image.asset('assets/icons8-prawn-50.png'),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'lib/assets/icons8-prawn-50.png'
                            ),
                            fit: BoxFit.scaleDown,
                          ),
                          color: Colors.lightGreen,
                          shape: BoxShape.circle,
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
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'lib/assets/icons8-prawn-50.png'
                            ),
                            fit: BoxFit.scaleDown,
                          ),
                          color: Colors.lightGreen,
                          shape: BoxShape.circle,
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
                      Container(

                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/icons8-taco-50-2.png'
                            ),
                            fit: BoxFit.scaleDown,
                          ),
                          color: Colors.lightGreen,
                          shape: BoxShape.circle,
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
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'lib/assets/icons8-prawn-50.png'
                            ),
                            fit: BoxFit.scaleDown,
                          ),
                          color: Colors.lightGreen,
                          shape: BoxShape.circle,
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
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/icons8-dressed-fish-50.png'
                            ),
                            fit: BoxFit.scaleDown,
                          ),
                          color: Colors.lightGreen,
                          shape: BoxShape.circle,
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
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(

                          color: Colors.lightGreen,
                          shape: BoxShape.circle,
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
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/icons8-dressed-fish-50.png'
                            ),
                            fit: BoxFit.scaleDown,
                          ),
                          color: Colors.lightGreen,
                          shape: BoxShape.circle,
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
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'lib/assets/icons8-hamburguer-50.png'
                            ),
                            fit: BoxFit.scaleDown,
                          ),
                          color: Colors.lightGreen,
                          shape: BoxShape.circle,
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
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'lib/assets/icons8-dressed-fish-50.png'
                            ),
                            fit: BoxFit.scaleDown,
                          ),
                          color: Colors.lightGreen,
                          shape: BoxShape.circle,
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
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'lib/assets/icons8-salad-50.png'
                            ),
                            fit: BoxFit.scaleDown,
                          ),
                          color: Colors.lightGreen,
                          shape: BoxShape.circle,
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
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/icons8-dressed-fish-50.png'
                                ),
                                fit: BoxFit.scaleDown,
                              ),
                              color: Colors.lightGreen,
                              shape: BoxShape.circle,
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
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/icons8-dressed-fish-50.png'
                            ),
                            fit: BoxFit.scaleDown,
                          ),
                          color: Colors.lightGreen,
                          shape: BoxShape.circle,
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
