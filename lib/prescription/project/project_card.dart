// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/utils/static_util.dart';

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
          : () => StaticUtils.openURL(
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
        margin: EdgeInsets.all(AppMargin.m40),
        child: Container(
          margin: EdgeInsets.all(AppMargin.m40),
          width: MediaQuery.of(context).size.width / 6,
          height: MediaQuery.of(context).size.height * .3,
          child: Stack(
            fit: StackFit.expand,
            children: [
              isHover == true
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            widget.projectTitle,
                            style: Theme.of(context).textTheme.headlineMedium,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            widget.projectDescription,
                            style: Theme.of(context).textTheme.labelLarge,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
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
                            return const Icon(
                              Icons.image_not_supported_outlined,
                            );
                          },
                        )
                      : Icon(
                          Icons.image_not_supported_outlined,
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
