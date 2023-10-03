import 'package:flutter/material.dart';
import 'package:senaecelik/utils/contacht_utils.dart';

class ContactMobileWidget extends StatelessWidget {
  const ContactMobileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OverflowBar(
        children: ContactUtils.contactIcon
            .asMap()
            .entries
            .map(
              (e) => Chip(
                label: Text(
                  ContactUtils.details[e.key],
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                avatar: Icon(
                  ContactUtils.contactIcon[e.key],
                  size: 18,
                ),
              ),
            )
            .toList());
  }
}
