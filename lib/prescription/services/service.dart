import 'package:flutter/material.dart';
import 'package:senaecelik/prescription/services/services_desktop.dart';
import 'package:senaecelik/responsive/responsive.dart';

class Service extends StatelessWidget {
  const Service({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Responsive(
        mobile: ServicesDesktop(),
        tablet: ServicesDesktop(),
        desktop: ServicesDesktop());
  }
}
