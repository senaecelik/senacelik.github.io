import 'package:flutter/material.dart';
import 'package:senaecelik/prescription/about/widget/about_text.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/widget/caption/caption.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1.000,
      child: Column(
        children: [
          const Caption(label: "About"),
          SizedBox(
            height: AppSizeHeight.s12,
          ),
          const AboutText()
        ],
      ),
    );
  }
}
