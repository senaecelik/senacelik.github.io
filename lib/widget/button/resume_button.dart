// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:senaecelik/utils/social_utils.dart';
import 'dart:html' as html;

class ResumeButton extends StatelessWidget {
  const ResumeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          html.window.open(
            SocialUtils.resume,
            "pdf",
          );
        },
        child: const Text(
          "RESUME",
        ));
  }
}
