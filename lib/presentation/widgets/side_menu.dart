import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgetsapp/configs/menu/menu_item.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;
    return NavigationDrawer(
        onDestinationSelected: (value) {
          setState(() {
            navDrawerIndex = value;
          });

          final menuItem = appMenuItems[value];

          context.push(menuItem.link);
          widget.scaffoldKey.currentState?.closeDrawer();
        },
        selectedIndex: navDrawerIndex,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
            child: const Text('Main'),
          ),
          ...appMenuItems
              .sublist(0, 3)
              .map((item) => NavigationDrawerDestination(
                    icon: Icon(item.icon),
                    label: Text(item.title),
                  )),
          Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
            child: const Divider(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
            child: const Text('More options'),
          ),
          ...appMenuItems
              .sublist(3)
              .map((item) => NavigationDrawerDestination(
                    icon: Icon(item.icon),
                    label: Text(item.title),
                  )),
        ]);
  }
}
