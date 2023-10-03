// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:senaecelik/animation/entrance_fader.dart';
import 'package:senaecelik/data/model/static_user_model.dart';
import 'package:senaecelik/resources/font_manager.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/responsive/responsive.dart';
import 'package:senaecelik/utils/static_util.dart';
import 'package:senaecelik/widget/button/social_link.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: Responsive.isDesktop(context)
          ? size.height * 1.000
          : size.height * 1.400,
      padding: EdgeInsets.all(AppPadding.p100),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Opacity(
              opacity: 0.9,
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
          Container(
            margin: EdgeInsets.fromLTRB(
              AppSizeHeight.s32,
              AppSizeHeight.s32,
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'WELCOME TO MY PORTFOLIO! ',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: FontWeightManager.light),
                    ),
                    EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Image.asset(
                        StaticUtils.hi,
                        height: AppSizeHeight.s32,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppSizeHeight.s32,
                ),
                Text(
                  StaticUserModel.user!.name,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 66, fontWeight: FontWeightManager.regular),
                ),
                Text(
                  StaticUserModel.user!.surname,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 82,
                        fontWeight: FontWeightManager.semiBold,
                        height: 0.8,
                      ),
                ),
                SizedBox(
                  height: AppSizeHeight.s40,
                ),
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow_outlined,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      SizedBox(
                        width: AppSizeWidth.s2,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            StaticUserModel.user!.jobList[0],
                            speed: const Duration(milliseconds: 50),
                            textStyle:
                                Theme.of(context).textTheme.headlineMedium,
                          ),
                          TyperAnimatedText(
                            StaticUserModel.user!.jobList[1],
                            speed: const Duration(milliseconds: 50),
                            textStyle:
                                Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                        isRepeatingAnimation: true,
                        repeatForever: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSizeHeight.s24,
                ),
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
