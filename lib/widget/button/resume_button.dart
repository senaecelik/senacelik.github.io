// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:senaecelik/utils/static_util.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          html.window.open(
            StaticUtils.resume,
            "pdf",
          );
        },
        child: const Text(
          "RESUME",
        ));
  }
}
