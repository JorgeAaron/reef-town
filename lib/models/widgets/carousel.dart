import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';


Widget slider(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 200.0,
      width: 300.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: Carousel(
        boxFit: BoxFit.cover,
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 6.0,
        dotIncreasedColor: Color(0xFFFF335C),
        dotBgColor: Colors.transparent,
        dotPosition: DotPosition.topRight,
        dotVerticalPadding: 10.0,
        showIndicator: true,
        indicatorBgPadding: 7.0,
        images: [
          NetworkImage(
              "https://reeftown.mx/wp-content/uploads/2018/02/017.png"),
          NetworkImage(
              "https://reeftown.mx/wp-content/uploads/2018/02/013.png"),
          NetworkImage(
              "https://reeftown.mx/wp-content/uploads/2018/02/015.jpg"),
        ],
      ),
    ),
  );
}