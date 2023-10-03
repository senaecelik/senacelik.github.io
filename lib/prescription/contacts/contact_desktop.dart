import 'package:flutter/material.dart';
import 'package:senaecelik/prescription/contacts/widget/contact_desktop_widget.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/utils/contacht_utils.dart';
import 'package:senaecelik/widget/caption/caption.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Caption(label: "Get in Touch"),
        SizedBox(
          height: AppSizeHeight.s40,
        ),
        ContactWidget(),
      ],
    );
  }
}

