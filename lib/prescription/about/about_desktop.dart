import 'package:flutter/material.dart';
import 'package:senaecelik/prescription/about/widget/about_text.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/widget/caption/caption.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.500,
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Caption(label: "ABOUT"),
          SizedBox(
            height: AppSizeHeight.s16,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  width: 200,
                ),
              ),
              Expanded(
                flex: 3,
                child: AboutText(),
              )
            ],
          )
        ],
      ),
    );
  }
}
