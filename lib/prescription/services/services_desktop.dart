// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:senaecelik/prescription/services/widget/service_card.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/utils/services_utils.dart';
import 'package:senaecelik/widget/caption/caption.dart';

class ServicesDesktop extends StatelessWidget {
  const ServicesDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(AppPadding.p100),
      child: Column(
        children: [
          Caption(label: "SERVICES"),
          SizedBox(
            height: AppSizeHeight.s16,
          ),
          //  CustomSectionHeading(
          //   text: '\nWhat I can do?',
          // ),
          // const CustomSectionSubHeading(
          //   text: 'I may not be perfect but surely I\'m of some use :)\n\n',
          // ),

          Wrap(
            spacing: width * 0.05,
            runSpacing: height * 0.05,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: ServicesUtils.servicesIcons
                .asMap()
                .entries
                .map(
                  (e) => ServiceCard(
                    serviceIcon: ServicesUtils.servicesIcons[e.key],
                    serviceTitle: ServicesUtils.servicesTitles[e.key],
                    serviceDescription:
                        ServicesUtils.servicesDescription[e.key],
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
