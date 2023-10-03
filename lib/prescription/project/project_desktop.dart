import 'package:flutter/material.dart';
import 'package:senaecelik/data/model/static_user_model.dart';
import 'package:senaecelik/prescription/project/project_card.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/utils/static_util.dart';
import 'package:senaecelik/widget/button/see_more_button.dart';
import 'package:senaecelik/widget/caption/caption.dart';

class ProjectDesktop extends StatelessWidget {
  const ProjectDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppPadding.p100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Caption(label: "Project"),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              ...StaticUserModel.user!.project
                  .asMap()
                  .entries
                  .map((e) => ProjectCard(
                        banner: StaticUserModel.user!.project[e.key].image,
                        projectIcon: StaticUserModel.user!.project[e.key].image,
                        projectLink: StaticUserModel.user!.project[e.key].link,
                        projectTitle:
                            StaticUserModel.user!.project[e.key].title,
                        projectDescription:
                            StaticUserModel.user!.project[e.key].description,
                      )),
            ],
          ),
          SeeMoreButton()
        ],
      ),
    );
  }
}

