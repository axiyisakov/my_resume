library monitoring;

import 'package:firebase_core/firebase_core.dart';

export 'package:firebase_analytics/firebase_analytics.dart';
export 'package:firebase_analytics/observer.dart';
export 'package:firebase_core/firebase_core.dart';

export 'src/analytics_service.dart';
export 'src/error_reporting_service.dart';
export 'src/explicit_crash.dart';

Future<void> initializeMonitoringPackage(
        {required String name, required FirebaseOptions? options}) =>
    Firebase.initializeApp(
      name: name,
      options: options,
    );
