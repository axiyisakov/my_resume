import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract final class FontSize {
  static const double ten = 10;
  static const double regular12 = 12;
  static const double small11 = 11;
  static const double mediumSmall12 = 12;
  static const double medium14 = 14;
  static const double xMedium16 = 16;
  static const double mediumLarge18 = 18;
  static const double large22 = 22;
  static const double xLarge56 = 56;
  static const double xxLarge192 = 192;
}

abstract final class AppTextStyles {
  static buttonTextStyle() => GoogleFonts.roboto(
        fontSize: FontSize.mediumLarge18,
        fontWeight: FontWeight.w500,
      );

  static textFieldTextStyle(
    BuildContext context, {
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
  }) =>
      GoogleFonts.roboto(
        fontSize: fontSize ?? FontSize.medium14,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color ?? Theme.of(context).textTheme.displayMedium!.color,
      );

  static captionBold10(
    BuildContext context, {
    Color? color,
  }) {
    return GoogleFonts.roboto(
      fontSize: FontSize.ten,
      fontWeight: FontWeight.bold,
      color: color ?? Theme.of(context).textTheme.displayMedium!.color,
    );
  }

  static footNote12(
    BuildContext context, {
    Color? color,
  }) {
    return GoogleFonts.roboto(
      fontSize: FontSize.regular12,
      fontWeight: FontWeight.normal,
      color: color ?? Theme.of(context).textTheme.displayMedium!.color,
    );
  }

  static footNoteBold12(
    BuildContext context, {
    Color? color,
  }) {
    return GoogleFonts.roboto(
      fontSize: FontSize.regular12,
      fontWeight: FontWeight.w600,
      color: color ?? Theme.of(context).textTheme.displayMedium!.color,
    );
  }

  static body14(
    BuildContext context, {
    Color? color,
  }) {
    return GoogleFonts.roboto(
      fontSize: FontSize.medium14,
      fontWeight: FontWeight.w600,
      color: color ?? Theme.of(context).textTheme.displayMedium!.color,
    );
  }

  static bodyBold14(
    BuildContext context, {
    Color? color,
  }) {
    return GoogleFonts.roboto(
      fontSize: FontSize.medium14,
      fontWeight: FontWeight.bold,
      color: color ?? Theme.of(context).textTheme.displayMedium!.color,
    );
  }

  static headline14(
    BuildContext context, {
    Color? color,
  }) {
    return GoogleFonts.roboto(
      fontSize: FontSize.xMedium16,
      fontWeight: FontWeight.w600,
      color: color ?? Theme.of(context).textTheme.displayMedium!.color,
    );
  }

  static headlineBold14(
    BuildContext context, {
    Color? color,
  }) {
    return GoogleFonts.roboto(
      fontSize: FontSize.xMedium16,
      fontWeight: FontWeight.bold,
      color: color ?? Theme.of(context).textTheme.displayMedium!.color,
    );
  }

  static title22(
    BuildContext context, {
    Color? color,
  }) {
    return GoogleFonts.roboto(
      fontSize: FontSize.large22,
      fontWeight: FontWeight.bold,
      color: color ?? Theme.of(context).textTheme.displayMedium!.color,
    );
  }
}
