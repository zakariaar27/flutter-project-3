import 'package:flutter/material.dart';

ThemeData lightThemes = ThemeData(
  primaryColor: Colors.purple,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.purple,
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
  ),
  textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.black),
      button: TextStyle(color: Colors.black),
      headline1: TextStyle(
        color: Colors.black,
      ),
      headline2: TextStyle(color: Colors.black),
      bodyText2: TextStyle(color: Colors.black),
      subtitle1: TextStyle(color: Colors.black),
      subtitle2: TextStyle(color: Colors.black)),
  scaffoldBackgroundColor: Colors.grey.shade300,
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    backgroundColor: Colors.purple,
  )),
);
