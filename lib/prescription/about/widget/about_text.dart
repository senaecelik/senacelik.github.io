import 'package:flutter/material.dart';
import 'package:senaecelik/resources/font_manager.dart';
import 'package:senaecelik/resources/values_manager.dart';

class AboutText extends StatelessWidget {
  const AboutText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "I'm Sena, a Flutter Developer",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        SizedBox(
          height: AppSizeHeight.s24,
        ),
        Text(
          "I graduated from the Department of Mathematics at Hacettepe University, Faculty of Science and Letters. I graduated from Google Game and Application Academy in 2022. I have been mentoring at Up School(YGA). I love being part of communities. I have been developing mobile apps for over 1 year now.",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeightManager.light,
              ),
        ),
      ],
    );
  }
}
