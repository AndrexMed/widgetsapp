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
  MenuItem(
      title: 'Animated Containers',
      subtitle: 'Contenedores animados',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: 'UI Controls + Tiles',
      subtitle: 'Una serie de controles de flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Tutorial',
      subtitle: 'Un tutorial de flutter',
      link: '/tutorial',
      icon: Icons.abc),
];
