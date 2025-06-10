

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
      path: '/buttons',
      name: ButtonScreen.name,
      builder: (context, state) => ButtonScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardScreen.name,
      builder: (context, state) => CardScreen(),
    ),
    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbars',
      name: SnackbarScreen.name,
      builder: (context, state) => SnackbarScreen(),
    ),
    GoRoute(
      path: '/animated_container',
      name: AnimatedScreen.name,
      builder: (context, state) => AnimatedScreen(),
    ),
    GoRoute(
      path: '/ui_controls',
      name: UiControlsScreen.name,
      builder: (context, state) => UiControlsScreen(),
    ),
    GoRoute(
      path: '/app_tutorial',
      name: AppTutorialScreen.name,
      builder: (context, state) => AppTutorialScreen(),
    ),
    GoRoute(
      path: '/infinite_scroll',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => InfiniteScrollScreen(),
    )

  ],
);