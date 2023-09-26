import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:senaecelik/prescription/main/widget/dark_light_button.dart';
import 'package:senaecelik/widget/button/social_link.dart';
import 'package:senaecelik/prescription/main/widget/mobile_drawer.dart';
import 'package:senaecelik/prescription/main/widget/navbar_desktop.dart';
import 'package:senaecelik/provider/scroll_provider.dart';
import 'package:senaecelik/responsive/responsive.dart';
import 'package:senaecelik/utils/body_util.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: !Responsive.isDesktop(context) ? AppBar() : null,
      drawer: !Responsive.isDesktop(context) ? const MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            ListView.builder(
              controller: scrollProvider.controller,
              itemCount: BodyUtils.views.length,
              itemBuilder: (context, index) => BodyUtils.views[index],
            ),

            // const ArrowOnTop(),

            Responsive.isDesktop(context)
                ? const NavbarDesktop()
                : const SizedBox.shrink(),
            Responsive.isDesktop(context)
                ? const Positioned(left: 20, top: 0, child: SocialLinks())
                : const SizedBox.shrink(),
            Responsive.isDesktop(context)
                ? Positioned(
                    right: 20,
                    top: 0,
                    child: Column(
                      children: [
                        Container(
                          color: Theme.of(context).colorScheme.onBackground,
                          width: 3,
                          height: 120,
                        ),
                        const DarkLightButton(),
                      ],
                    ))
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
