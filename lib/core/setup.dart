import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_resume/core/di/locator.dart' as di;

abstract final class AppSetup {
  static void init() async {
    di.configureDependencies();
    await ScreenUtil.ensureScreenSize();

    FlutterNativeSplash.remove();
  }
}
