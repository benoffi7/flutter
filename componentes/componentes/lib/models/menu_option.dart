import 'package:flutter/material.dart';

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  //MenuOption(this.route, this.icon, this.name, this.screen); asi son de posicion

  //asi es por nombre como le pasamos todo. igual hay que pasarlo
  MenuOption(
      {required this.icon,
      required this.name,
      required this.route,
      required this.screen});
}
