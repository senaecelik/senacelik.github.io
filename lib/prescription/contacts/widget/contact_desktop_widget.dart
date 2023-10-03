
import 'package:flutter/material.dart';
import 'package:senaecelik/utils/contacht_utils.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
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
            .toList());
  }
}