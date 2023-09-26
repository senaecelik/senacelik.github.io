import 'package:flutter/material.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/utils/contacht_utils.dart';
import 'package:senaecelik/widget/caption/caption.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Caption(label: "Get in Touch"),
        SizedBox(
          height: AppSizeHeight.s40,
        ),
        Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.vertical,
            children: ContactUtils.contactIcon
                .asMap()
                .entries
                .map(
                  (e) => Chip(
                    label: Text(ContactUtils.details[e.key]),
                    avatar: Icon(ContactUtils.contactIcon[e.key]),
                  ),
                )
                .toList()),
      ],
    );
  }
}
