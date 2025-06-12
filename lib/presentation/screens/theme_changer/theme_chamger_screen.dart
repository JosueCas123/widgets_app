import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';


class ThemeChamgerScreen extends ConsumerWidget {
  final String name = '/theme-changer';

  const ThemeChamgerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final bool isDarkMode = ref.watch(isDarkModeProvider);
    final bool isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            icon: Icon(
              isDarkMode ? Icons.light_mode_outlined : Icons.dark_mode_outlined,
            ),

            onPressed: () {
              // ref.read(isDarkModeProvider.notifier).state =
              //     !isDarkMode; // Toggle dark mode state
              ref.read(themeNotifierProvider.notifier).toggleDarkMode();
            },
          ),
        ],
      ),
      body: _ThemeChanger(),
    );
  }
}

class _ThemeChanger extends ConsumerWidget {
  const _ThemeChanger();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProvider);
   //final int selectedColor = ref.watch(themeNotifierProvider).selectedColors;
    final int selectedColor = ref.watch(themeNotifierProvider).selectedColors;

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];
        return RadioListTile(
          title: Text('Este coloer',style: TextStyle(color: color),),
          subtitle: Text('Este es el subtitulo del color'),
          activeColor: color,
          value: index,
          groupValue: selectedColor,
          onChanged: (value) {
            // ref.read(selectedColorProvider.notifier).state = index;
            ref.read(themeNotifierProvider.notifier).selectColor(index);
          
          },
        );
      },
    );
  }
}
