

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
    title: 'Botoes',
    subtitle: 'Go to home page',
    icon: Icons.smart_button_outlined,
    link: '/buttons',
  ),
  MenuItems(
    title: 'Tarjertas',
    subtitle: 'Configure your preferences',
    icon: Icons.credit_card,
    link: '/cards',
  ),
  MenuItems(
    title: 'Progressindicators',
    subtitle: 'View and edit your profile',
    icon: Icons.refresh_rounded,
    link: '/progress',
  ),
];