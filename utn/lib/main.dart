import 'package:flutter/material.dart';
import 'package:utn/src/presentation/screens/counter_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.amber),
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          body: const HomeScreen(),
        ));
  }
}
