import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/config/theme/app_theme.dart';

final themeProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme());

  void darkModeSwitch() {}

  void controllerColorPalette() {}
}
