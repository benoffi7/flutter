import 'package:componentes/screens/list_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Ruta'),
              leading: Icon(Icons.accessibility_new),
              onTap: () 
              {
                  final route = MaterialPageRoute(builder: (context) 
                  {
                    return ListViewScreen();
                  },);
                  Navigator.push(context, route)
              },
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: 10),
    );
  }
}
