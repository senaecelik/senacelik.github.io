import 'package:flutter/material.dart';
import 'package:senaecelik/utils/navbar_util.dart';
import 'package:senaecelik/widget/button/navbar_action_button.dart';
import 'package:senaecelik/widget/button/resume_button.dart';

class NavbarDesktop extends StatefulWidget {
  const NavbarDesktop({super.key});

  @override
  State<NavbarDesktop> createState() => _NavbarDesktopState();
}

class _NavbarDesktopState extends State<NavbarDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
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
          const ResumeButton()
        ],
      ),
    );
  }
}
