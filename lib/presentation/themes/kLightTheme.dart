import 'package:flutter/material.dart';

final kLightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    color: Colors.white,
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    ),
    elevation: 0.0,
    centerTitle: true,
  ),
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 12.0,
      letterSpacing: 0.8,
      color: Color.fromRGBO(166, 166, 166, 1.0),
      fontFamily: 'SFProDisplay',
      fontWeight: FontWeight.w700,
    ),
    bodyText1: TextStyle(
      color: Colors.red,
    ),
  ),
  colorScheme: ColorScheme.light().copyWith(
    // #DFDFDF
    primary: Color.fromRGBO(223, 223, 223, 1.0),
    // #A6A6A6
    primaryVariant: Color.fromRGBO(166, 166, 166, 1.0),
    // secondary:
  ),
  primaryColor: Color.fromRGBO(229, 229, 229, 1.0),
  accentColor: Color.fromRGBO(89, 175, 255, 1.0),
  hintColor: Color.fromRGBO(166, 166, 166, 1.0),
  dividerColor: Color.fromRGBO(223, 223, 223, 1.0),
);
