import 'package:flutter/material.dart';
import 'package:senaecelik/prescription/home/home_desktop.dart';
import 'package:senaecelik/resources/color_manager.dart';
import 'package:senaecelik/resources/styles_manager.dart';
import 'package:senaecelik/resources/values_manager.dart';

class ProjectCard extends StatefulWidget {
  final String? banner;
  final String? projectLink;
  final String? projectIcon;
  final String projectTitle;
  final String projectDescription;

  final IconData? projectIconData;

  const ProjectCard({
    Key? key,
    this.banner,
    this.projectIcon,
    this.projectLink,
    this.projectIconData,
    required this.projectTitle,
    required this.projectDescription,
  }) : super(key: key);
  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: widget.projectLink == null
          ? () {}
          : () => openURL(
                widget.projectLink!,
              ),
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.all(AppMargin.m20),
        child: Container(
          margin: EdgeInsets.all(AppMargin.m50),
          width: MediaQuery.of(context).size.width / 6,
          height: MediaQuery.of(context).size.width * .15,
          child: Stack(
            fit: StackFit.expand,
            children: [
              isHover == true
                  ? SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            widget.projectTitle,
                            style: getRegularStyle(
                                fontSize: 32,
                                color: ColorManager.instance.black),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            widget.projectDescription,
                            style: getLightStyle(
                                fontSize: 24,
                                color: ColorManager.instance.black),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )
                  : Container(),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 400),
                opacity: isHover ? 0.0 : 1.0,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: widget.banner != null
                      ? Image.network(
                          widget.banner!,
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(
                              Icons.image_not_supported_outlined,
                            );
                          },
                        )
                      : Container(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
