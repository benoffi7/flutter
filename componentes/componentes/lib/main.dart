import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: const CardScreen(),
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) {
          return const HomeScreen();
        },
        'listview1': (BuildContext context) {
          return const ListViewScreen();
        },
        'listview2': (BuildContext context) {
          return const ListViewScreen2();
        },
        'alert': (BuildContext context) {
          return const AlertScreen();
        },
        'card': (BuildContext context) {
          return const CardScreen();
        }
      },
    );
  }
}
