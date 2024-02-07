import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:my_resume/core/theme/colors.dart';
import 'package:my_resume/core/theme/spacing.dart';

const _dividerThemeData = DividerThemeData(
  space: 0,
);

abstract class AppThemeData {
  ThemeData get materialThemeData;

  double screenMargin = Spacing.mediumLarge16;

  double gridSpacing = Spacing.mediumLarge16;

  Color get startButtonColor;

  Color get textFieldBorderColor;

  Color get optionalButtonColor;

  Color get textColor;

  Color get textFieldColor;

  Color get displaySmallTextColor;

  Color get myMessageBubbleColor;

  Color get border;

  Color get background;

  Color get icon;

  Color get disabledIconsColor;

  Color get bottomTabBarColor;
  Color get chatUserCardTileColor;
  Color get accentBlue;
  Color get buttonText;
  Color get accentRed;
  Color get accentGreen;
}

extension on Color {
  Map<int, Color> _toSwatch() => {
        50: withOpacity(0.1),
        100: withOpacity(0.2),
        200: withOpacity(0.3),
        300: withOpacity(0.4),
        400: withOpacity(0.5),
        500: withOpacity(0.6),
        600: withOpacity(0.7),
        700: withOpacity(0.8),
        800: withOpacity(0.9),
        900: this,
      };

  MaterialColor toMaterialColor() => MaterialColor(
        value,
        _toSwatch(),
      );
}

@lazySingleton
class AppLightThemeData extends AppThemeData {
  @override
  ThemeData get materialThemeData => ThemeData(
        brightness: Brightness.light,
        drawerTheme: const DrawerThemeData(
          backgroundColor: AppColors.white,
        ),
        primarySwatch: Colors.black.toMaterialColor(),
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: AppColors.whiteSmoke,
        ),
        textTheme: TextTheme(
          displayMedium: TextStyle(
            color: textColor,
          ),
          displaySmall: TextStyle(
            color: displaySmallTextColor,
          ),
        ),
        dividerColor: AppColors.grey,
        dividerTheme: _dividerThemeData,
        colorScheme: ColorScheme.light(
          primary: background,
          background: background,
        ),
      );

  @override
  Color get startButtonColor => AppColors.buttonBackground;

  @override
  Color get textFieldBorderColor => AppColors.greyWhisper;

  @override
  Color get optionalButtonColor => AppColors.buttonBackground;

  @override
  Color get textColor => AppColors.black;

  @override
  Color get textFieldColor => AppColors.whiteSmoke;

  @override
  Color get displaySmallTextColor => AppColors.grey;

  @override
  Color get myMessageBubbleColor => AppColors.greyWhisper;

  @override
  Color get border => AppColors.greyWhisper;

  @override
  Color get background => AppColors.bgGradientOr;

  @override
  Color get icon => AppColors.black;

  @override
  Color get disabledIconsColor => AppColors.grey;

  @override
  Color get bottomTabBarColor => AppColors.white;

  @override
  Color get chatUserCardTileColor => AppColors.whiteSnow;

  @override
  Color get accentBlue => AppColors.accentBlue;

  @override
  Color get buttonText => AppColors.buttonText;

  @override
  Color get accentRed => AppColors.accentRed;

  @override
  Color get accentGreen => AppColors.accentGreen;
}

@lazySingleton
class AppDarkThemeData extends AppThemeData {
  @override
  ThemeData get materialThemeData => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.white.toMaterialColor(),
        drawerTheme: const DrawerThemeData(
          backgroundColor: AppColors.whiteDark,
        ),
        dividerTheme: _dividerThemeData,
        dividerColor: AppColors.greyDark,
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: AppColors.whiteSmokeDark,
        ),
        textTheme: TextTheme(
          displayMedium: TextStyle(
            color: textColor,
          ),
          displaySmall: TextStyle(
            color: displaySmallTextColor,
          ),
        ),
        colorScheme: ColorScheme.dark(
            primary: background.toMaterialColor(), background: background),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return Colors.white;
            }
            return null;
          }),
        ),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return Colors.white;
            }
            return null;
          }),
        ),
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return Colors.white;
            }
            return null;
          }),
          trackColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return Colors.white;
            }
            return null;
          }),
        ),
      );

  @override
  Color get startButtonColor => AppColors.buttonBackgroundDark;

  @override
  Color get textFieldBorderColor => AppColors.greyWhisperDark;

  @override
  Color get optionalButtonColor => AppColors.buttonBackgroundDark;

  @override
  Color get textColor => AppColors.blackDark;

  @override
  Color get textFieldColor => AppColors.whiteSmokeDark;

  @override
  Color get displaySmallTextColor => AppColors.greyDark;

  @override
  Color get myMessageBubbleColor => AppColors.greyWhisperDark;

  @override
  Color get border => AppColors.greyWhisperDark;

  @override
  Color get background => AppColors.bgGradientOrDark;

  @override
  Color get icon => AppColors.blackDark;

  @override
  Color get disabledIconsColor => AppColors.greyDark;

  @override
  Color get bottomTabBarColor => AppColors.whiteDark;

  @override
  Color get chatUserCardTileColor => AppColors.whiteSnowDark;

  @override
  Color get accentBlue => AppColors.accentBlueDark;

  @override
  Color get buttonText => AppColors.buttonTextDark;

  @override
  Color get accentRed => AppColors.accentRedDark;

  @override
  Color get accentGreen => AppColors.accentGreenDark;
}
