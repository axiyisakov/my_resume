import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

extension ThemeChanger on BuildContext {
  void changeTheme(AdaptiveThemeMode mode) {
    AdaptiveTheme.of(this).setThemeMode(mode);
  }
}
