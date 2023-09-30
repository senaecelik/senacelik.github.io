import 'package:flutter/material.dart';
import 'package:senaecelik/data/model/static_user_model.dart';
import 'package:senaecelik/prescription/project/project_card.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/utils/static_util.dart';
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
          // const CustomSectionSubHeading(
          //   text: "Here are few samples of my previous work :)\n\n",
          // ),

          Center(
            child: SizedBox(
              height: 400,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: StaticUserModel.user!.project.length,
                itemBuilder: (context, index) {
                  return ProjectCard(
                    banner: StaticUserModel.user!.project[index].image,
                    projectIcon: StaticUserModel.user!.project[index].image,
                    projectLink: StaticUserModel.user!.project[index].link,
                    projectTitle: StaticUserModel.user!.project[index].title,
                    projectDescription:
                        StaticUserModel.user!.project[index].description,
                  );
                },
              ),
            ),
          ),

          OutlinedButton(
            onPressed: () => StaticUtils.openURL(
              StaticUserModel.user!.socialLink.github,
            ),
            child: const Text(
              'See More',
            ),
          )
        ],
      ),
    );
  }
}
