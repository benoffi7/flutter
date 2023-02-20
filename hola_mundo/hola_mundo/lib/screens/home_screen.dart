import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double size = 30;
    TextStyle fontSize = const TextStyle(fontSize: size);
    int counter = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        elevation: 10.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FloatingActionButton(
          elevation: 30,
          child: const Icon(Icons.add),
          onPressed: () {
            counter++;
          },
        ),
      ),
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador de clicks', style: fontSize),
            Text(
              '$counter',
              style: fontSize,
            )
          ],
        ),
      ),
    );
  }
}
