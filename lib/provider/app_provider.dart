import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppProvider extends ChangeNotifier {
  static AppProvider state(BuildContext context, [bool listen = false]) =>
      Provider.of<AppProvider>(context, listen: listen);

  ThemeMode _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  bool get isDark => _themeMode == ThemeMode.dark;

  void init() async {
    _themeMode = ThemeMode.dark;
    notifyListeners();
  }

  void setTheme(ThemeMode newTheme) async {
    if (_themeMode == newTheme) {
      return;
    }
    _themeMode = newTheme;

    notifyListeners();
  }
}
