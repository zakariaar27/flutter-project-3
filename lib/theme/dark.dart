import 'package:flutter/material.dart';


ThemeData darkThemes = ThemeData(
 primaryColor: Colors.white,
 iconButtonTheme:const IconButtonThemeData(style:ButtonStyle()) ,
  appBarTheme: AppBarTheme(
      backgroundColor: const Color.fromARGB(255, 13, 13, 13),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
      
  scaffoldBackgroundColor: Color.fromARGB(255, 130, 130, 130),
  textTheme: const TextTheme(
      headline1: TextStyle(color: Colors.white),
      headline2: TextStyle(color: Colors.white),
      headline3: TextStyle(color: Colors.white)),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade600),
  ),
);
