import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
       brightness: Brightness.light,
      appBarTheme: AppBarTheme(color: primary, elevation: 0));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primary,
      appBarTheme: AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: Colors.black);
}
