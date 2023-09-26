import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:senaecelik/prescription/main/widget/dark_light_button.dart';
import 'package:senaecelik/provider/app_provider.dart';
import 'package:senaecelik/utils/navbar_util.dart';
import 'package:senaecelik/widget/button/navbar_action_button.dart';

class NavbarDesktop extends StatefulWidget {
  const NavbarDesktop({super.key});

  @override
  State<NavbarDesktop> createState() => _NavbarDesktopState();
}

class _NavbarDesktopState extends State<NavbarDesktop> {
  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Container(
      color: appProvider.isDark
          ? Colors.black.withOpacity(0.1)
          : Colors.white.withOpacity(0.5),
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
      child: OverflowBar(
        alignment: MainAxisAlignment.end,
        spacing: 10,
        children: [
          ...NavBarUtils.names.asMap().entries.map(
                (e) => NavbarActionButton(
                  label: e.value,
                  index: e.key,
                ),
              ),
          const DarkLightButton()
        ],
      ),
    );
  }
}
