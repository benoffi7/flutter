import 'package:componentes/router/app_routes.dart';
import 'package:componentes/screens/list_view.dart';
import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            /*
            return ListTile(
              title: Text('Ruta'),
              leading: Icon(Icons.accessibility_new),
              onTap: () {
                /*
                final route = MaterialPageRoute(
                  builder: (context) {
                    return ListViewScreen();
                  },
                );
                */
                //Navigator.push(context, route);
                //Navigator.pushReplacement(context, newRoute) finish la actual ej: login
                Navigator.pushNamed(context, 'card');
              },
            );*/

            var ruta = AppRoutes.menuOptions[index];

            return ListTile(
              title: Text(ruta.name),
              leading: Icon(ruta.icon, color: AppTheme.primary),
              onTap: () {
                Navigator.pushNamed(context, ruta.route);
              },
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
