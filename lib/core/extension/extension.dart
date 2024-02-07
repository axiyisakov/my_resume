import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

extension ThemeChanger on BuildContext {
  void changeTheme(bool value) {
    if (value) {
      AdaptiveTheme.of(this).setLight();
    } else {
      AdaptiveTheme.of(this).setDark();
    }
  }
}
