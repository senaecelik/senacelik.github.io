import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:senaecelik/prescription/main/widget/dark_light_button.dart';
import 'package:senaecelik/prescription/main/widget/hash_rich_text.dart';
import 'package:senaecelik/provider/scroll_provider.dart';
import 'package:senaecelik/utils/navbar_util.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return NavigationDrawer(children: [
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                DrawerHeader(
                    child: Center(
                  child: Text(
                    "Sena ÇELİK",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                )),
                const Positioned(
                  top: 10,
                  right: 10,
                  child: DarkLightButton(),
                )
              ],
            ),
            ...NavBarUtils.names.asMap().entries.map(
                  (e) => ListTile(
                    title: HashRichText(label: e.value),
                    onTap: () {
                      scrollProvider.scrollMobile(e.key);
                    },
                  ),
                ),
          ]),
    ]);
  }
}
