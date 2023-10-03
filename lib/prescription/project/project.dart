import 'package:flutter/material.dart';
import 'package:senaecelik/prescription/project/project_desktop.dart';
import 'package:senaecelik/prescription/project/project_mobile.dart';
import 'package:senaecelik/responsive/responsive.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: ProjectMobile(),
        tablet: ProjectDesktop(),
        desktop: ProjectDesktop());
  }
}
