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

    return IconButton.outlined(
        style: IconButton.styleFrom(
            backgroundColor:
                appProvider.isDark ? Colors.transparent : Colors.white),
        color: appProvider.isDark ? Colors.white : Colors.amber,
        onPressed: () {
          appProvider.setTheme(
            appProvider.isDark ? ThemeMode.light : ThemeMode.dark,
          );
        },
        icon: Icon(appProvider.isDark ? Icons.nightlight : Icons.sunny));
  }
}
