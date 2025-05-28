

class MenuItems {

  final String title;
  final String subtitle;
  final String icon;
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
    icon: 'assets/icons/home.svg',
    link: '/home',
  ),
  MenuItems(
    title: 'Settings',
    subtitle: 'Configure your preferences',
    icon: 'assets/icons/settings.svg',
    link: '/settings',
  ),
  MenuItems(
    title: 'Profile',
    subtitle: 'View and edit your profile',
    icon: 'assets/icons/profile.svg',
    link: '/profile',
  ),
];