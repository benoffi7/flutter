import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;
  String texto = "Click";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.restart_alt),
            onPressed: () {
              contador = 0;
              setText();
              setState(() {});
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              setText();
              contador++;
              setState(() {});
            },
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$contador',
              style: const TextStyle(fontSize: 40),
            ),
            Text(texto)
          ],
        ),
      ),
    );
  }

  void setText() {
    if (contador < 1) {
      texto = "Click";
    } else {
      texto = "Clicks";
    }
  }
}
