import 'package:flutter/material.dart';
import 'package:senaecelik/resources/styles_manager.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorSchemeSeed: Colors.green,
      brightness: Brightness.light,
      textTheme: TTextTheme.lightTextTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      colorSchemeSeed: Colors.green,
      brightness: Brightness.dark,
      textTheme: TTextTheme.dartkTextTheme);
}
