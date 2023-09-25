import 'package:flutter/material.dart';
import 'package:senaecelik/resources/font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color);
}

// regular style
TextStyle getRegularStyle({
  required double fontSize,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontManager.fontFamily,
    FontWeightManager.regular,
    color,
  );
}

// light text style
TextStyle getLightStyle({
  required double fontSize,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontManager.fontFamily,
    FontWeightManager.light,
    color,
  );
}

// bold text style
TextStyle getBoldStyle({
  required double fontSize,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontManager.fontFamily,
    FontWeightManager.bold,
    color,
  );
}

// semibold text style
TextStyle getSemiBoldStyle({
  required double fontSize,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontManager.fontFamily,
    FontWeightManager.semiBold,
    color,
  );
}

// medium text style
TextStyle getMediumStyle({
  required double fontSize,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontManager.fontFamily,
    FontWeightManager.medium,
    color,
  );
}
