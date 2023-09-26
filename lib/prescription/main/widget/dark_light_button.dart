import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:senaecelik/provider/app_provider.dart';

class DarkLightButton extends StatelessWidget {
  const DarkLightButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    return IconButton(
        style: IconButton.styleFrom(
            backgroundColor: appProvider.isDark ? Colors.white : Colors.black),
        color: appProvider.isDark ? Colors.black : Colors.amber,
        onPressed: () {
          appProvider.setTheme(
            appProvider.isDark ? ThemeMode.light : ThemeMode.dark,
          );
        },
        icon: Icon(appProvider.isDark ? Icons.nightlight : Icons.sunny));
  }
}
