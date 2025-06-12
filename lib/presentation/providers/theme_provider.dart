import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final colorListProvider = Provider((ref) => colorList);

final isDarkModeProvider = StateProvider((ref) => false);

final selectedColorProvider = StateProvider((ref) => 0);

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier,AppTheme>((ref) => ThemeNotifier());


class ThemeNotifier extends StateNotifier<AppTheme> {

  ThemeNotifier() : super( AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(
      isDarkMode: !state.isDarkMode,
    );
  }

  void selectColor(int index) {
    if (index < 0 || index >= colorList.length) {
      throw RangeError('Index out of range: $index');
    }
    state = state.copyWith(
      selectedColors: index,
    );
  }
}