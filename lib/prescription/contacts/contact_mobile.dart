import 'package:flutter/material.dart';
import 'package:senaecelik/prescription/contacts/widget/contact_mobile_widget.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/widget/caption/caption.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.550,
      child: Column(
        children: [
          const Caption(label: "Contact"),
          SizedBox(
            height: AppSizeHeight.s12,
          ),
          const ContactMobileWidget()
        ],
      ),
    );
  }
}
