import 'dart:async';
import 'dart:isolate';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:monitoring/monitoring.dart';
import 'package:my_resume/app/presentation/view/cv_view.dart';
import 'package:my_resume/core/di/locator.dart' as di;
import 'package:my_resume/core/setup.dart';
import 'package:my_resume/core/theme/app_theme_data.dart';
import 'package:my_resume/firebase_options.dart';

Future<void> main() async {
  late final errorReportingService = ErrorReportingService();
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      await initializeMonitoringPackage(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
      AppSetup.init();
      FlutterError.onError = errorReportingService.recordFlutterError;
      Isolate.current.addErrorListener(
        RawReceivePort((pair) async {
          final List<dynamic> errorAndStacktrace = pair;
          await errorReportingService.recordError(
            errorAndStacktrace.first,
            errorAndStacktrace.last,
          );
        }).sendPort,
      );
      runApp(DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(),
      ));
    },
    (error, stack) => errorReportingService.recordError(
      error,
      stack,
      fatal: true,
    ),
  );
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
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: const CVView(),
        );
      },
    );
  }
}
