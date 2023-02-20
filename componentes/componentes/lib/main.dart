import 'package:componentes/screens/home_screen.dart';
import 'package:componentes/screens/list_view.dart';
import 'package:componentes/screens/list_view_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewScreen2(),
    );
  }
}
