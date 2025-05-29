import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart' as AppRouter;
import 'package:widgets_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColors: 1).gethemeData(),
    );
  }
}
