import 'package:componentes/router/app_routes.dart';
import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      /* ThemeMode.system to follow system theme, 
         ThemeMode.light for light theme, 
         ThemeMode.dark for dark theme
      */
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(), //tipo manifest para declarar todo
      //onGenerateRoute: AppRoutes.onGenerateRoute , //cuando hay un solo argumento le podes pasar la funcion
      //cuando no encuentra una ruta tira esta
      onGenerateRoute: (settings) {
        return AppRoutes.onGenerateRoute(settings);
      },
    );
  }
}
