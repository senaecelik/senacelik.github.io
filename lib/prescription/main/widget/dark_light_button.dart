
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:provider/provider.dart';
import 'package:senaecelik/provider/app_provider.dart';

class DarkLightButton extends StatelessWidget {
  const DarkLightButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    return LiteRollingSwitch(
      width: 50,
      iconOn: FontAwesomeIcons.moon,
      colorOn: Colors.black87,
      iconOff: LineIcons.sun,
      colorOff: Colors.green.shade200,
      textSize: 10,
      value: appProvider.isDark,
      onChanged: (value) {
        appProvider.setTheme(
          !value ? ThemeMode.light : ThemeMode.dark,
        );
      },
      onDoubleTap: () {},
      onSwipe: () {},
      onTap: () {},
    );
  }
}
