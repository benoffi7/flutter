import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  final options = const ['Megaman', 'MGS', 'SS', 'FF'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
      ),
      body: ListView(
        children: [
          ...options
              .map((game) => ListTile(
                    onTap: () {
                      print('hola');
                    },
                    hoverColor: Colors.blue,
                    iconColor: Colors.amber,
                    subtitle: const Text('Me cacho en 10'),
                    leading: const Icon(Icons.add),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    title: Text('Juego: $game'),
                  ))
              .toList()
        ],
      ),
    );
  }
}
