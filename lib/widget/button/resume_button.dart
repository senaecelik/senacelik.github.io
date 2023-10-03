// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:senaecelik/utils/social_utils.dart';

import 'package:senaecelik/utils/static_util.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          StaticUtils.openURL(
            SocialUtils.resume,
          );
        },
        child: const Text(
          "RESUME",
        ));
  }
}
