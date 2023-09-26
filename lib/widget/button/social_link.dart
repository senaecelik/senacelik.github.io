import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:senaecelik/provider/app_provider.dart';
import 'package:senaecelik/resources/color_manager.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/responsive/responsive.dart';
import 'package:senaecelik/utils/static_util.dart';
// ignore: avoid_web_libraries_in_flutter
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
          color: Theme.of(context).colorScheme.onBackground,
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
                  highlightColor:
                      Theme.of(context).colorScheme.secondaryContainer,
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
                  hoverColor: Theme.of(context).colorScheme.secondaryContainer,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
