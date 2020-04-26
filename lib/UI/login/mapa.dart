import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class Mapa extends StatefulWidget {
  @override
  _MapaState createState() => _MapaState();
}


class _MapaState extends State<Mapa> {

  GoogleMapController mapController;

  String buscarDireccion;

  double latitud;

  double longitud;



  @override
  Widget build(BuildContext context) {
    return  GoogleMap(
             initialCameraPosition: CameraPosition(
               target: LatLng(27.9287186,-110.9236237),
               zoom: 12,
             )
            );
  }



}
