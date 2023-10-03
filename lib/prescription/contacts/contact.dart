import 'package:flutter/material.dart';
import 'package:senaecelik/prescription/contacts/contact_desktop.dart';
import 'package:senaecelik/prescription/contacts/contact_mobile.dart';
import 'package:senaecelik/responsive/responsive.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: ContactMobile(),
        tablet: ContactDesktop(),
        desktop: ContactDesktop());
  }
}
