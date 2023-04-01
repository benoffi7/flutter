import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      brightness: Brightness.light,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: primary, shape: const BeveledRectangleBorder())),
      textButtonTheme: const TextButtonThemeData(
          /* style: TextButton.styleFrom(backgroundColor: primary)*/),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5),
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.all(Radius.circular(50)))));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: Colors.black);

  /*
  static final ButtonStyle textButtomTheme =
      TextButton.styleFrom(foregroundColor: primary);
      */
}
