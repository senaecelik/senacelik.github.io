import 'package:flutter/material.dart';
import 'package:senaecelik/prescription/about/widget/about_text.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/widget/caption/caption.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppPadding.p20),
      child: Column(
        children: [
          Caption(label: "ABOUT"),
          SizedBox(
            height: AppSizeHeight.s12,
          ),
          AboutText()
        ],
      ),
    );
  }
}
