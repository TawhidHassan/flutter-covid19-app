import 'package:flutter/material.dart';

import 'datasorce.dart';
import 'homePage.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Circular',
      primaryColor: primaryBlack
    ),
    home: Home(),
  ));
}