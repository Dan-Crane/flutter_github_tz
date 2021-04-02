import 'package:flutter/material.dart';

final kLightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    color: Colors.white,
    // textTheme: ,
    elevation: 0.0,
    centerTitle: true,
  ),
  textTheme: TextTheme(
    subtitle1: TextStyle(
      fontSize: 14.0,
      color: Colors.black,
      fontFamily: 'SFProDisplay',
      fontWeight: FontWeight.w500,
    ),
  ),
  primaryColor: Color.fromRGBO(229, 229, 229, 1.0),
  accentColor: Color.fromRGBO(89, 175, 255, 1.0),
  hintColor: Colors.white,
);
