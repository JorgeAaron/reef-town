import 'package:flutter/material.dart';

String text = 'Click the button to start the payment';
double totalCost = 10.0;
double tip = 1.0;
double tax = 0.0;
double taxPercent = 0.2;
int amount = 0;
bool showSpinner = false;
String url ='https://us-central1-demostripe-b9557.cloudfunctions.net/StripePI';

class ShowDialogToDismiss extends StatelessWidget {
  final String content;
  final String title;
  final String buttonText;

  ShowDialogToDismiss({this.title, this.buttonText, this.content});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


