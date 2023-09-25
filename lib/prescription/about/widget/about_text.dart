

import 'package:flutter/material.dart';
import 'package:senaecelik/resources/color_manager.dart';
import 'package:senaecelik/resources/styles_manager.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/responsive/responsive.dart';

class AboutText extends StatelessWidget {
  const AboutText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "I'm Sena, a Flutter Developer",
            style: getRegularStyle(
                fontSize: Responsive.isDesktop(context) ? 28 : 20,
                color: ColorManager.instance.black),
          ),
          Text(
            "I graduated from the Department of Mathematics at Hacettepe University, Faculty of Science and Letters. I graduated from Google Game and Application Academy in 2022. I have been mentoring at Up School(YGA). I love being part of communities. I have been developing mobile apps for over 1 year now.",
            style: getLightStyle(
                fontSize: Responsive.isDesktop(context) ? 24 : 18,
                color: ColorManager.instance.black),
          ),
          SizedBox(
            height: AppSizeHeight.s24,
          ),
        ],
      ),
    );
  }
}