import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:senaecelik/animation/entrance_fader.dart';
import 'package:senaecelik/prescription/home/home_desktop.dart';
import 'package:senaecelik/resources/color_manager.dart';
import 'package:senaecelik/resources/styles_manager.dart';
import 'package:senaecelik/resources/values_manager.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppPadding.p20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: AppSizeHeight.s6,
          ),
          Text("Sena ÇELİK",
              style: getMediumStyle(
                  fontSize: 24, color: ColorManager.instance.black)),
          SizedBox(
            height: AppSizeHeight.s12,
          ),
          EntranceFader(
            offset: const Offset(-10, 0),
            delay: const Duration(seconds: 1),
            duration: const Duration(milliseconds: 800),
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(' Flutter Developer',
                    speed: const Duration(milliseconds: 50),
                    textStyle: getMediumStyle(
                        fontSize: 18, color: ColorManager.instance.black)),
                TyperAnimatedText(' Mathematician',
                    speed: const Duration(milliseconds: 50),
                    textStyle: getMediumStyle(
                        fontSize: 18, color: ColorManager.instance.black)),
              ],
              isRepeatingAnimation: true,
              repeatForever: true,
            ),
          ),
          SizedBox(
            height: AppSizeHeight.s12,
          ),
          SocialLinks()
        ],
      ),
    );
  }
}
