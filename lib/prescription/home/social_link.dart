import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:senaecelik/provider/app_provider.dart';
import 'package:senaecelik/resources/color_manager.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/responsive/responsive.dart';
import 'package:senaecelik/utils/static_util.dart';
import 'dart:html' as html;
class SocialLinks extends StatelessWidget {
  const SocialLinks({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Column(
      children: [
        Container(
          color: Colors.green.shade200,
          width: 3,
          height: 200,
        ),
        Wrap(
          spacing: 20,
          direction: Axis.vertical,
          children: StaticUtils.socialIconURL
              .asMap()
              .entries
              .map(
                (e) => IconButton(
                  highlightColor: Colors.green.shade300,
                  splashRadius: AppSizeHeight.s1,
                  icon: Image.network(
                    e.value,
                    color: appProvider.isDark
                        ? ColorManager.instance.white
                        : ColorManager.instance.black,
                    height: Responsive.isDesktop(context) ? 40 : 20,
                  ),
                  iconSize: 25,
                  onPressed: () =>
                      html.window.open(StaticUtils.socialLinks[e.key], ""),
                  hoverColor: appProvider.isDark
                      ? Colors.green.shade600
                      : Colors.green.shade100,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
