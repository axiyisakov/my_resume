import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract final class AppSetup {
  static void init() async {
    await ScreenUtil.ensureScreenSize();

    FlutterNativeSplash.remove();
  }
}
