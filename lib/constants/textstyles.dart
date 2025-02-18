import 'package:flutter/material.dart';
import 'package:mad/constants/colors.dart';
import 'package:sizer/sizer.dart';
import 'fonts.dart';

class KCustomTextStyle {
  static kBold(BuildContext context, double? fontSize,
      [Color? color,
      String? fontFamily,
      bool needItalics = false,
      FontWeight? fontWeight,
      bool isOverline = false]) {
    return TextStyle(
        decorationColor: Colors.red,
        decoration: isOverline ? TextDecoration.lineThrough : null,
        fontFamily: fontFamily ?? KConstantFonts.manropeBold,
        // fontSize: fontSize?.sp ?? FontSize.kMedium.sp,
        fontStyle: needItalics ? FontStyle.italic : FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.bold,
        color: color ?? KConstantColors.whiteColor);
  }

  static kBoldArp(BuildContext context, double? fontSize,
      [Color? color,
      String? fontFamily,
      bool needItalics = false,
      FontWeight? fontWeight,
      bool isOverline = false]) {
    return TextStyle(
        decorationColor: KConstantColors.bgColor,
        decoration: isOverline
            ? TextDecoration.combine([TextDecoration.lineThrough])
            : null,
        fontFamily: fontFamily ?? KConstantFonts.manropeExtraBold,
        // fontSize: fontSize?.sp ?? FontSize.kMedium.sp,
        fontStyle: needItalics ? FontStyle.italic : FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w900,
        color: color ?? KConstantColors.whiteColor);
  }

  static kLight(BuildContext context, double? fontSize,
      [Color? color,
      String? fontFamily,
      bool needItalics = false,
      FontWeight? fontWeight,
      bool isOverline = false]) {
    return TextStyle(
        decorationColor: Colors.white,
        decoration: isOverline ? TextDecoration.lineThrough : null,
        fontFamily: fontFamily ?? KConstantFonts.manropeLight,
        // fontSize: fontSize?.sp ?? FontSize.kMedium.sp,
        fontStyle: needItalics ? FontStyle.italic : FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.bold,
        color: color ?? KConstantColors.whiteColor);
  }

  static kMedium(BuildContext context, double? fontSize,
      [Color? color,
      String? fontFamily,
      bool needItalics = false,
      FontWeight? fontWeight,
      bool isOverline = false]) {
    return TextStyle(
        decorationColor: Colors.red,
        fontWeight: fontWeight,
        decoration: isOverline ? TextDecoration.lineThrough : null,
        fontStyle: needItalics ? FontStyle.italic : FontStyle.normal,
        fontFamily: fontFamily ?? KConstantFonts.manropeLight,
        // fontSize: fontSize?.sp ?? FontSize.kMedium.sp,
        color: color ?? KConstantColors.whiteColor);
  }
}
