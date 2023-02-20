import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

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
      floatingActionButton: CustomFloatingActions(
        increaseFM: increase,
        decreaseFM: decrease,
        resetFM: reset,
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

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFM;
  final Function decreaseFM;
  final Function resetFM;

  const CustomFloatingActions(
      {super.key,
      required this.increaseFM,
      required this.decreaseFM,
      required this.resetFM});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1),
            onPressed: () {
              increaseFM();
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
              resetFM();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1),
            onPressed: () {
              decreaseFM();
            },
          ),
        ),
      ],
    );
  }
}
