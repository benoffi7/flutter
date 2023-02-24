import 'package:flutter/material.dart';

class CircleScreen extends StatelessWidget {
  const CircleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circle'),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 10),
              child: CircleAvatar(
                child: Text('Si'),
                backgroundColor: Colors.indigo[900],
              ))
        ],
      ),
      body: Center(
          child: CircleAvatar(
        maxRadius: 110,
        backgroundImage: NetworkImage(
            'https://www.mundiario.com/media/mundiario/images/2022/12/29/2022122913324221659.jpg'),
      )),
    );
  }
}
