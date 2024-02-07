/*
*================================Copyright©=====================================
?Name        : colors
*Author      : Axmadjon Isaqov
^Version     : CURRENT_VERSION
&Copyright   : Created by Axmadjon Isaqov on  23:49:43 23.12.2023*© 2023 @axiydev
!Description : chat_app in Dart
*===============================================================================
*/
import 'package:flutter/rendering.dart';

abstract class AppColors {
  static const Color whiteSnow = Color(0xFFFCFCFC);
  static const Color whiteSnowDark = Color(0xFF070A0D);

  static const Color black = Color(0xFF000000);
  static const Color blackDark = Color(0xFFFCFCFC);

  static const Color grey = Color(0xFF7A7A7A);
  static const Color greyDark = Color(0xFF7A7A7A);

  static const Color greyGainsBoro = Color(0xFFDBDBDB);
  static const Color greyGainsBoroDark = Color(0xFF2D2F2F);

  static const Color greyWhisper = Color(0xFFECEBEB);
  static const Color greyWhisperDark = Color(0xFF1C1E22);
  static const Color whiteSmoke = Color(0xFFF2F2F2);
  static const Color whiteSmokeDark = Color(0xFF13151B);
  static const Color white = Color(0xFFFFFFFF);
  static const Color whiteDark = Color(0xFF101418);

  static const Color blueAlice = Color(0xFFE9F2FF);
  static const Color blueAliceDark = Color(0xFF00193D);

  static const Color bgGradient = Color(0xFFF7F7F7);
  static const Color bgGradientOr = Color(0xFFFCFCFC);

  static const Color bgGradientDark = Color(0xFF0A0C0F);
  static const Color bgGradientOrDark = Color(0xFF070A0D);

  static final Color overlay = const Color(0xFF000000).withOpacity(.2);
  static final Color overlayInDark = const Color(0xFF000000).withOpacity(.6);
  static final Color overlayDarkInWhite =
      const Color(0xFF000000).withOpacity(.6);
  static final Color overlayDarkInBlack =
      const Color(0xFF000000).withOpacity(.8);
  static const Color buttonText = Color(0xFFFFFFFF);
  static const Color buttonTextDark = Color(0xFF005FFF);

  static const Color buttonBackground = Color(0xFF005FFF);
  static const Color buttonBackgroundDark = Color(0xFFFFFFFF);

  static const Color accentRed = Color(0xFFFF3742);
  static const Color accentRedDark = Color(0xFFFF3742);

  static const Color accentGreen = Color(0xFF20E070);
  static const Color accentGreenDark = Color(0xFF20E070);

  static const Color accentBlue = Color(0xFF005FFF);
  static const Color accentBlueDark = Color(0xFF005FFF);

  static const BoxShadow borderTopShadow = BoxShadow(
    offset: Offset(0, -1),
    blurRadius: 0,
    color: Color(0xFF000000),
    spreadRadius: 0.08,
  );
  static const BoxShadow borderTopShadowDark = BoxShadow(
    offset: Offset(0, -1),
    blurRadius: 0,
    color: Color(0xFFFFFFFF),
    spreadRadius: 0.08,
  );

  static const BoxShadow borderBottomShadow = BoxShadow(
    offset: Offset(0, 1),
    blurRadius: 0,
    color: Color(0xFF000000),
    spreadRadius: 0.08,
  );
  static const BoxShadow borderBottomShadowDark = BoxShadow(
    offset: Offset(0, 1),
    blurRadius: 0,
    color: Color(0xFFFFFFFF),
    spreadRadius: 0.08,
  );

  static const BoxShadow borderIconButtonShadow = BoxShadow(
    offset: Offset(0, 1),
    blurRadius: 4,
    color: Color(0xFF000000),
    spreadRadius: 0.25,
  );
  static const BoxShadow borderIconButtonShadowDark = BoxShadow(
    offset: Offset(0, 1),
    blurRadius: 4,
    color: Color(0xFF000000),
    spreadRadius: 0.5,
  );

  static const BoxShadow modalShadow = BoxShadow(
    offset: Offset(0, 0),
    blurRadius: 4,
    color: Color(0xFF000000),
    spreadRadius: 0.6,
  );

  static const BoxShadow modalShadowDark = BoxShadow(
    offset: Offset(0, 0),
    blurRadius: 8,
    color: Color(0xFF000000),
    spreadRadius: 0.5,
  );

  static const Color backgroundBlurColor = Color(0xFF20E070);
  static const Color backgroundBlurColorDark = Color(0xFF20E070);
}
