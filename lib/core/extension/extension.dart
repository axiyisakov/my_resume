import 'dart:ui';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_resume/core/theme/spacing.dart';

extension ThemeChanger on BuildContext {
  void changeTheme(AdaptiveThemeMode mode) {
    AdaptiveTheme.of(this).setThemeMode(mode);
  }
}

extension IntExtension on int {
  int get blur => 30;
}

extension BlurToWidget on Widget {
  Widget blurWithGradient(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
      child: ShaderMask(
        shaderCallback: (Rect bounds) => const RadialGradient(
          center: Alignment.topLeft,
          colors: [
            Color.fromRGBO(49, 55, 111, 1),
            Color.fromRGBO(169, 75, 162, 1),
            Color.fromRGBO(169, 75, 162, .5),
          ],
        ).createShader(
          bounds,
        ),
        child: this,
      ),
    );
  }

  Widget withLinearGradient(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromRGBO(92, 180, 228, 1),
          Color.fromRGBO(156, 56, 255, .6),
        ],
      ).createShader(bounds),
      child: this,
    );
  }

  SliverToBoxAdapter toSliver() {
    return SliverToBoxAdapter(
      child: this,
    );
  }
}

extension AppSize on BuildContext {
  void initScreenSize() {
    ScreenUtil.init(this, designSize: Spacing.designSize, minTextAdapt: true);
  }

  void configureDesignSize() {
    ScreenUtil.configure(designSize: Spacing.designSize, minTextAdapt: true);
  }
}
