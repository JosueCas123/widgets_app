

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
  MenuItems(
    title: 'Snackbars Dialogs',
    subtitle: 'Indicadores de pantalla',
    icon: Icons.info_outline,
    link: '/snackbars',
  ),
  MenuItems(
    title: 'Animated Containerr',
    subtitle: 'Animated container example',
    icon: Icons.check_box_outlined,
    link: '/animated_container',
  ),
  MenuItems(
    title: 'UI Controls',
    subtitle: 'UI controls example',
    icon: Icons.car_rental_outlined,
    link: '/ui_controls',
  ),
  MenuItems(
    title: 'App Tutorial',
    subtitle: 'App tutorial example',
    icon: Icons.accessibility_rounded,
    link: '/app_tutorial',
  ),
];