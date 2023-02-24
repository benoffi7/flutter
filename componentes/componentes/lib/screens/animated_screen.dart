import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.red;
  BorderRadiusGeometry _border = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated'),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.easeInOutCubic,
          duration: Duration(milliseconds: 400),
          decoration: BoxDecoration(color: _color, borderRadius: _border),
          width: _width,
          height: _height,
          //color: Colors.red, no puede estar si tengo decorartion
        ),
      ),
      floatingActionButton: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: 'a1',
              child: Icon(Icons.restore_rounded),
              onPressed: () {
                reset();
                setState(() {});
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: 'a2',
              child: Icon(Icons.play_circle_outline),
              onPressed: () {
                addSize();
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }

  void addSize() {
    Random random = Random();

    int r = random.nextInt(255);
    int g = random.nextInt(255);
    int b = random.nextInt(255);
    double opacity = random.nextInt(100).toDouble();

    _border = BorderRadius.circular(random.nextInt(100).toDouble() + 10);
    _color = Color.fromRGBO(r, g, b, opacity);
    _width = random.nextInt(300).toDouble() + 70;
    _height = random.nextInt(300).toDouble() + 70;
  }

  void reset() {
    _width = 50;
    _height = 50;
    _color = Colors.red;
  }
}
