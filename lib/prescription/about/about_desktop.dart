// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:senaecelik/animation/entrance_fader.dart';
import 'package:senaecelik/data/model/static_user_model.dart';
import 'package:senaecelik/prescription/about/widget/about_text.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/widget/caption/caption.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.5,
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Caption(label: "About Me"),
          SizedBox(
            height: AppSizeHeight.s40,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  width: 200,
                  child: EntranceFader(
                    offset: const Offset(0, 0),
                    delay: const Duration(seconds: 1),
                    duration: const Duration(milliseconds: 800),
                    child: Image.network(
                      StaticUserModel.user!.image,
                      height: size.width < 1200
                          ? size.height * 0.8
                          : size.height * 0.85,
                    ),
                  ),
                ),
              ),
              const Expanded(
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
