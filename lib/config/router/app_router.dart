

import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screem.dart';


final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => ButtonScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => CardScreen(),
    ),
  ],
);