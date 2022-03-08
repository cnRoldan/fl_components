import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 6, 61, 10);
  static const Color secondary = Colors.green;
  static const Color colorIcons = Color.fromARGB(255, 6, 77, 0);
  static const Color colorTexts = Color.fromARGB(255, 0, 0, 0);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: primary, shape: const StadiumBorder(), elevation: 0)),

    //FABs
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary, elevation: 10),

    //Color primario
    primaryColor: primary,

    //Botones
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

    //AppBar Theme
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),

    //Inputs

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(20))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(20))),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(20))),
    ),
  );

  static final ThemeData darkTheme = ThemeData.light().copyWith(
      //Color primario
      primaryColor: primary,
      textTheme: const TextTheme(
          bodyText1: TextStyle(color: colorTexts),
          bodyText2: TextStyle(color: colorTexts)),
      //AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      cardTheme: const CardTheme(color: secondary),
      scaffoldBackgroundColor: Colors.black);
}
