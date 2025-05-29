

import 'package:flutter/material.dart';


class MenuItems {

  final String title;
  final String subtitle;
  final IconData icon;
  final String link;


  const MenuItems({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.link,
  });


}


const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Home',
    subtitle: 'Go to home page',
    icon: Icons.smart_button_outlined,
    link: '/home',
  ),
  MenuItems(
    title: 'Settings',
    subtitle: 'Configure your preferences',
    icon: Icons.settings,
    link: '/settings',
  ),
  MenuItems(
    title: 'Profile',
    subtitle: 'View and edit your profile',
    icon: Icons.credit_card,
    link: '/profile',
  ),
];