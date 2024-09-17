import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(title: 'Home', subtitle: '', link: '/', icon: Icons.home),
  MenuItem(
      title: 'Settings', subtitle: '', link: '/settings', icon: Icons.settings),
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'Contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
];
