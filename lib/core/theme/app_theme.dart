import 'package:flutter/material.dart';
import 'package:my_resume/core/theme/app_theme_data.dart';

class AppThemeProvider extends InheritedWidget {
  final AppThemeData light;
  final AppThemeData dark;

  const AppThemeProvider({
    super.key,
    required this.light,
    required this.dark,
    required super.child,
  });

  @override
  bool updateShouldNotify(AppThemeProvider oldWidget) {
    return oldWidget.light != light || oldWidget.dark != dark;
  }

  static AppThemeData of(BuildContext context) {
    final provider =
        context.dependOnInheritedWidgetOfExactType<AppThemeProvider>();
    assert(provider != null, 'No ThemeProvider found in context');
    final currentBrightness = Theme.of(context).brightness;
    return currentBrightness == Brightness.dark
        ? provider!.dark
        : provider!.light;
  }
}

extension DarkModePref on DarkModePreference {
  ThemeMode toThemeMode() {
    switch (this) {
      case DarkModePreference.useSystemSettings:
        return ThemeMode.system;
      case DarkModePreference.alwaysLight:
        return ThemeMode.light;
      case DarkModePreference.alwaysDark:
        return ThemeMode.dark;
    }
  }
}

enum DarkModePreference { alwaysDark, alwaysLight, useSystemSettings }
