import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:my_resume/app/presentation/view/cv_view.dart';
import 'package:my_resume/core/di/locator.dart' as di;
import 'package:my_resume/core/theme/app_theme_data.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: di.sl<AppLightThemeData>().materialThemeData,
        dark: di.sl<AppDarkThemeData>().materialThemeData,
        initial: AdaptiveThemeMode.system,
        builder: (light, dark) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: light,
            darkTheme: dark,
            home: const CVView(),
          );
        });
  }
}
