import 'package:flutter/material.dart';
import 'package:senaecelik/resources/color_manager.dart';
import 'package:senaecelik/resources/font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight? fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color);
}

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: _getTextStyle(57, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.black),
    displayMedium: _getTextStyle(45, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.black),
    displaySmall: _getTextStyle(36, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.black),
    headlineLarge: _getTextStyle(36, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.black),
    headlineMedium: _getTextStyle(28, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.black),
    headlineSmall: _getTextStyle(24, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.black),
    titleLarge: _getTextStyle(16, FontManager.fontFamily,
        FontWeightManager.medium, ColorManager.instance.black),
    labelLarge: _getTextStyle(14, FontManager.fontFamily,
        FontWeightManager.medium, ColorManager.instance.black),
    labelMedium: _getTextStyle(12, FontManager.fontFamily,
        FontWeightManager.medium, ColorManager.instance.black),
    labelSmall: _getTextStyle(11, FontManager.fontFamily,
        FontWeightManager.medium, ColorManager.instance.black),
    bodyLarge: _getTextStyle(16, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.black),
    bodyMedium: _getTextStyle(14, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.black),
    bodySmall: _getTextStyle(11, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.black),
  );

  static TextTheme dartkTextTheme = TextTheme(
    displayLarge: _getTextStyle(57, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.white),
    displayMedium: _getTextStyle(45, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.white),
    displaySmall: _getTextStyle(36, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.white),
    headlineLarge: _getTextStyle(36, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.white),
    headlineMedium: _getTextStyle(28, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.white),
    headlineSmall: _getTextStyle(24, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.white),
    titleLarge: _getTextStyle(16, FontManager.fontFamily,
        FontWeightManager.medium, ColorManager.instance.white),
    labelLarge: _getTextStyle(14, FontManager.fontFamily,
        FontWeightManager.medium, ColorManager.instance.white),
    labelMedium: _getTextStyle(12, FontManager.fontFamily,
        FontWeightManager.medium, ColorManager.instance.white),
    labelSmall: _getTextStyle(11, FontManager.fontFamily,
        FontWeightManager.medium, ColorManager.instance.white),
    bodyLarge: _getTextStyle(16, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.white),
    bodyMedium: _getTextStyle(14, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.white),
    bodySmall: _getTextStyle(11, FontManager.fontFamily,
        FontWeightManager.regular, ColorManager.instance.white),
  );

  // regular style
  // TextStyle getRegularStyle({
  //   required double fontSize,
  //   required Color color,
  // }) {
  //   return _getTextStyle(
  //     fontSize,
  //     FontManager.fontFamily,
  //     FontWeightManager.regular,
  //     color,
  //   );
  // }

// // light text style
//   TextStyle getLightStyle({
//     required double fontSize,
//     required Color color,
//   }) {
//     return _getTextStyle(
//       fontSize,
//       FontManager.fontFamily,
//       FontWeightManager.light,
//       color,
//     );
//   }

// // bold text style
//   TextStyle getBoldStyle({
//     required double fontSize,
//     required Color color,
//   }) {
//     return _getTextStyle(
//       fontSize,
//       FontManager.fontFamily,
//       FontWeightManager.bold,
//       color,
//     );
//   }

// // semibold text style
//   TextStyle getSemiBoldStyle({
//     required double fontSize,
//     required Color color,
//   }) {
//     return _getTextStyle(
//       fontSize,
//       FontManager.fontFamily,
//       FontWeightManager.semiBold,
//       color,
//     );
//   }

// // medium text style
//   TextStyle getMediumStyle({
//     required double fontSize,
//     required Color color,
//   }) {
//     return _getTextStyle(
//       fontSize,
//       FontManager.fontFamily,
//       FontWeightManager.medium,
//       color,
//     );
//   }
}
