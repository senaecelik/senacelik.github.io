import 'package:flutter/material.dart';
import 'package:senaecelik/prescription/about/about_desktop.dart';
import 'package:senaecelik/prescription/about/about_mobile.dart';
import 'package:senaecelik/responsive/responsive.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: AboutMobile(), tablet: AboutMobile(), desktop: AboutDesktop());
  }
}
