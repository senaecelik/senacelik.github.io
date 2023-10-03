import 'package:flutter/material.dart';
import 'package:senaecelik/prescription/contacts/contact_desktop.dart';
import 'package:senaecelik/prescription/contacts/contact_mobile.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/responsive/responsive.dart';
import 'package:senaecelik/utils/contacht_utils.dart';
import 'package:senaecelik/widget/caption/caption.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: ContactMobile(),
        tablet: ContactDesktop(),
        desktop: ContactDesktop());
  }
}
