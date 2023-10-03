import 'package:flutter/material.dart';
import 'package:senaecelik/data/model/static_user_model.dart';
import 'package:senaecelik/resources/font_manager.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/responsive/responsive.dart';

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
          StaticUserModel.user!.about.title,
          style: !Responsive.isDesktop(context)
              ? Theme.of(context).textTheme.titleLarge
              : Theme.of(context).textTheme.headlineSmall,
        ),
        SizedBox(
          height: AppSizeHeight.s24,
        ),
        Text(
          StaticUserModel.user!.about.description,
          style: !Responsive.isDesktop(context)
              ? Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeightManager.light,
                  )
              : Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeightManager.light,
                  ),
        ),
      ],
    );
  }
}
