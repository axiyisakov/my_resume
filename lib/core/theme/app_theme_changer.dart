import 'package:flutter/material.dart';

class AppThemeChanger extends ValueNotifier<ThemeMode> {
  AppThemeChanger(super.value);

  void changeThemeMode(ThemeMode mode) {
    value = mode;
  }
}
