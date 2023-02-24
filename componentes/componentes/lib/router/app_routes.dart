import 'package:componentes/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    /*
    MenuOption(
        name: 'Inicio',
        route: 'home',
        screen: HomeScreen(),
        icon: Icons.holiday_village_sharp),
        */
    MenuOption(
        name: 'Lista 1',
        route: 'listview1',
        screen: ListViewScreen(),
        icon: Icons.list),
    MenuOption(
        name: 'Lista 2',
        route: 'listview2',
        screen: ListViewScreen2(),
        icon: Icons.list_alt),
    MenuOption(
        name: 'Alerta',
        route: 'alert',
        screen: AlertScreen(),
        icon: Icons.add_alert),
    MenuOption(
        name: 'Tarjeta',
        route: 'card',
        screen: CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
        name: 'Circle Avatar',
        route: 'circle',
        screen: CircleScreen(),
        icon: Icons.circle),
    MenuOption(
        name: 'Animación',
        route: 'animated',
        screen: AnimatedScreen(),
        icon: Icons.animation),
    MenuOption(
        name: 'Formulario',
        route: 'form',
        screen: InputScreen(),
        icon: Icons.input)
  ];

  //esto es para el main
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

/*
  static Map<String, Widget Function(BuildContext)> getRoutes() 
  {
    return {
      'home': (BuildContext context) {
        return const HomeScreen();
      },
      'listview1': (BuildContext context) {
        return const ListViewScreen();
      },
      'listview2': (BuildContext context) {
        return const ListViewScreen2();
      },
      'alert': (BuildContext context) {
        return const AlertScreen();
      },
      'card': (BuildContext context) {
        return const CardScreen();
      }
    };
  }
  */

//esto es para el main, la ruta por defecto (error 404)
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    final route = MaterialPageRoute(
      builder: (context) {
        return AlertScreen();
      },
    );
    return route;
  }
}
