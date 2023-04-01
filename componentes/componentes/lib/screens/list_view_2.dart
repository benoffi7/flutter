import 'package:flutter/material.dart';

class ListViewScreen2 extends StatelessWidget {
  const ListViewScreen2({Key? key}) : super(key: key);

  final options = const ['Megaman', 'MGS', 'SS', 'FF'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista 2'),
      ),
      body: ListView.separated(
          itemCount: options.length,
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemBuilder: (context, index) {
            return ListTile(
              enabled: true,
              hoverColor: Colors.amber,
              iconColor: Colors.red,
              leading: const Icon(Icons.abc),
              title: Text(options[index]),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
              ),
              onTap: () {
                final game = options[index];
              },
            );
          }),
    );
  }
}
