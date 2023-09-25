import 'package:flutter/material.dart';
import 'package:senaecelik/prescription/home/home_desktop.dart';
import 'package:senaecelik/prescription/project/project_card.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/utils/project_util.dart';
import 'package:senaecelik/utils/static_util.dart';
import 'package:senaecelik/widget/caption/caption.dart';

class ProjectDesktop extends StatelessWidget {
  const ProjectDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppPadding.p100),
      child: Column(
        children: [
          Caption(label: "PROJECT"),
          // const CustomSectionSubHeading(
          //   text: "Here are few samples of my previous work :)\n\n",
          // ),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: 30,
            children: ProjectUtils.banners
                .asMap()
                .entries
                .map(
                  (e) => ProjectCard(
                    banner: e.value,
                    projectIcon: ProjectUtils.icons[e.key],
                    projectLink: ProjectUtils.links[e.key],
                    projectTitle: ProjectUtils.titles[e.key],
                    projectDescription: ProjectUtils.description[e.key],
                  ),
                )
                .toList(),
          ),

          OutlinedButton(
            onPressed: () => openURL(StaticUtils.github),
            child: Text(
              'See More',
            ),
          )
        ],
      ),
    );
  }
}
