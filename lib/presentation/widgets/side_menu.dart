import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
        onDestinationSelected: (value) {
          setState(() {
            navDrawerIndex = value;
          });
        },
        selectedIndex: navDrawerIndex,
        children: [
          NavigationDrawerDestination(
              icon: Icon(Icons.abc), label: Text('ABC')),
          NavigationDrawerDestination(
              icon: Icon(Icons.abc_rounded), label: Text('XYz')),
        ]);
  }
}
