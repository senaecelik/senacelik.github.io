import 'package:flutter/material.dart';
import 'package:senaecelik/utils/navbar_util.dart';
import 'package:senaecelik/utils/static_util.dart';
import 'package:senaecelik/widget/button/navbar_action_button.dart';
import 'package:universal_html/html.dart' as html;

class NavbarDesktop extends StatelessWidget {
  const NavbarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ...NavBarUtils.names.asMap().entries.map(
                (e) => NavbarActionButton(
                  label: e.value,
                  index: e.key,
                ),
              ),
          SizedBox(
            width: 16,
          ),
          OutlinedButton(
              onPressed: () {
                html.window.open(
                  StaticUtils.resume,
                  "pdf",
                );
              },
              child: Text("RESUME"))
        ],
      ),
    );
  }
}
