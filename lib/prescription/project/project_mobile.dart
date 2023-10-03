import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:senaecelik/data/model/static_user_model.dart';
import 'package:senaecelik/prescription/project/project_card.dart';
import 'package:senaecelik/resources/font_manager.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/utils/static_util.dart';
import 'package:senaecelik/widget/button/see_more_button.dart';
import 'package:senaecelik/widget/caption/caption.dart';

class ProjectMobile extends StatelessWidget {
  const ProjectMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.600,
      child: Column(
        children: [
          Caption(label: "Project"),
          SizedBox(
            height: AppSizeHeight.s12,
          ),
          CarouselSlider.builder(
            itemCount: StaticUserModel.user!.project.length,
            itemBuilder: (context, index, realIndex) {
              return Card(
                  child: Column(
                children: [
                  ListTile(
                    dense: true,
                    onTap: () => StaticUtils.openURL(
                        StaticUserModel.user!.project[index].link),
                    title: Text(
                      StaticUserModel.user!.project[index].title,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeightManager.medium),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppPadding.p12),
                    child: Text(
                      StaticUserModel.user!.project[index].description,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeightManager.light),
                      overflow: TextOverflow.fade,
                    ),
                  )
                ],
              ));
            },
            options: CarouselOptions(
                autoPlay: true, enlargeCenterPage: true, aspectRatio: 5 / 3),
          ),
          SizedBox(
            height: AppSizeHeight.s12,
          ),
          SeeMoreButton(),
        ],
      ),
    );
  }
}
