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
      title: 'Botones',
      subtitle: '',
      link: '/buttons',
      icon: Icons.radio_button_on_sharp),
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'Contenedor estilizado',
      link: '/cards',
      icon: Icons.card_travel_sharp),
  MenuItem(
      title: 'ProgressIndicators',
      subtitle: 'Generalidades y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbar',
      subtitle: 'Mensajes de alerta',
      link: '/snackbars',
      icon: Icons.abc),
];
