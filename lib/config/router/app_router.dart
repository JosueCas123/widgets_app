

import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screem.dart';


final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/settings',
      name: ButtonScreen.name,
      builder: (context, state) => ButtonScreen(),
    ),
    GoRoute(
      path: '/profile',
      name: CardScreen.name,
      builder: (context, state) => CardScreen(),
    ),
  ],
);