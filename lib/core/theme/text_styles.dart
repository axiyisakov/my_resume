import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_resume/core/theme/fontsize.dart';

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
      GoogleFonts.poppins(
        fontSize: fontSize ?? FontSize.medium14,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color ?? Theme.of(context).textTheme.displayMedium!.color,
      );

  static captionBold10(
    BuildContext context, {
    Color? color,
  }) {
    return GoogleFonts.poppins(
      fontSize: FontSize.ten,
      fontWeight: FontWeight.bold,
      color: color ?? Theme.of(context).textTheme.displayMedium!.color,
    );
  }

  static footNote12(
    BuildContext context, {
    Color? color,
  }) {
    return GoogleFonts.poppins(
      fontSize: FontSize.regular12,
      fontWeight: FontWeight.normal,
      color: color ?? Theme.of(context).textTheme.displayMedium!.color,
    );
  }

  static footNoteBold12(
    BuildContext context, {
    Color? color,
  }) {
    return GoogleFonts.poppins(
      fontSize: FontSize.regular12,
      fontWeight: FontWeight.w600,
      color: color ?? Theme.of(context).textTheme.displayMedium!.color,
    );
  }

  static body14(
    BuildContext context, {
    Color? color,
  }) {
    return GoogleFonts.poppins(
      fontSize: FontSize.medium14,
      fontWeight: FontWeight.w600,
      color: color ?? Theme.of(context).textTheme.displayMedium!.color,
    );
  }

  static bodyBold14(
    BuildContext context, {
    Color? color,
  }) {
    return GoogleFonts.poppins(
      fontSize: FontSize.medium14,
      fontWeight: FontWeight.bold,
      color: color ?? Theme.of(context).textTheme.displayMedium!.color,
    );
  }

  static headline14(
    BuildContext context, {
    Color? color,
  }) {
    return GoogleFonts.poppins(
      fontSize: FontSize.xMedium16,
      fontWeight: FontWeight.w600,
      color: color ?? Theme.of(context).textTheme.displayMedium!.color,
    );
  }

  static headlineBold14(
    BuildContext context, {
    Color? color,
  }) {
    return GoogleFonts.poppins(
      fontSize: FontSize.xMedium16,
      fontWeight: FontWeight.bold,
      color: color ?? Theme.of(context).textTheme.displayMedium!.color,
    );
  }

  static title22(
    BuildContext context, {
    Color? color,
  }) {
    return GoogleFonts.quicksand(
      fontSize: FontSize.large22,
      fontWeight: FontWeight.bold,
      color: color ?? Theme.of(context).textTheme.displayMedium!.color,
    );
  }
}
