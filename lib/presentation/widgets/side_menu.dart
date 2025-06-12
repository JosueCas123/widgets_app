import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerSelectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;
    return NavigationDrawer(
      selectedIndex: navDrawerSelectedIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerSelectedIndex = value;
        });
        final menuItem = appMenuItems[value];
        context.push(menuItem.link);
        widget.scaffoldKey.currentState?.closeDrawer();
      },

      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 5 : 20, 26, 10),
          child: const Text('main'),
        ),

        ...appMenuItems
            .sublist(0, 3)
            .map(
              (items) => NavigationDrawerDestination(
                icon: Icon(items.icon),
                label: Text(items.title),
              ),
            ),
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 5 : 20, 26, 10),
          child: Divider(),
        ),

        Padding(
          padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
          child: const Text('More Options'),
        ),
        ...appMenuItems
            .sublist(3)
            .map(
              (items) => NavigationDrawerDestination(
                icon: Icon(items.icon),
                label: Text(items.title),
              ),
            ),
      ],
    );
  }
}
