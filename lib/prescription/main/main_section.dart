import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
      drawer: !Responsive.isDesktop(context) ? const SizedBox() : null,
      body: SafeArea(
        child: Stack(
          children: [
            ListView.builder(
              controller: scrollProvider.controller,
              itemCount: BodyUtils.views.length,
              itemBuilder: (context, index) => BodyUtils.views[index],
            ),
            // const ArrowOnTop(),

            const NavbarDesktop()
          ],
        ),
      ),
    );
  }
}
