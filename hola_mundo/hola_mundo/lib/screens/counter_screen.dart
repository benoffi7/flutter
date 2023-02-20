import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    const double size = 30;
    TextStyle fontSize = const TextStyle(fontSize: size);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
        elevation: 10.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FloatingActionButton(
              child: const Icon(Icons.exposure_plus_1),
              onPressed: () {
                counter++;
                setState(() {});
              },
            ),
          ),
          /*
          const SizedBox(
            width: 20,
          ),*/
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FloatingActionButton(
              child: const Icon(Icons.settings_backup_restore_outlined),
              onPressed: () {
                counter = 0;
                setState(() {});
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FloatingActionButton(
              child: const Icon(Icons.exposure_minus_1),
              onPressed: () {
                if (counter > 0) {
                  counter--;
                }
                setState(() {});
              },
            ),
          ),
        ],
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
