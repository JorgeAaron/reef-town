import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:reef_town/widgets/loading.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  Position _currentPosition;
  String   _currentAddress;



  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if(_currentPosition == null)
              Loading(),
            if (_currentPosition != null)
              Text (_currentAddress),
            SizedBox(
              height: 22,
            ),
            MaterialButton(
                child: Text("Conseguir locación"),
                color: Colors.lightGreen,
                onPressed: () {
                 _getCurrentLocation();
                }
            )
          ],
        ),
      ),
    );
  }

    _getCurrentLocation() {


      geolocator
      .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
      .then((Position position){
        setState(() {
          _currentPosition = position;
        });

        __getAddressFromLatLong();
      }).catchError((e) {
        print(e);
      });
  }


  __getAddressFromLatLong() async {
    try{
      List<Placemark> p = await geolocator.placemarkFromCoordinates(
         _currentPosition.latitude, _currentPosition.longitude
      );

      Placemark place = p[0];

      setState(() {
        _currentAddress =
        "Colonia: ${place.subLocality}, Calle: ${place.thoroughfare}, Codigo "
            "postal: ${place.postalCode}";
        
      });
    } catch (e){
      print(e);
    }

  }
}
