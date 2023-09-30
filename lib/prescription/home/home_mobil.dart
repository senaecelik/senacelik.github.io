// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:senaecelik/data/model/static_user_model.dart';
import 'package:senaecelik/resources/values_manager.dart';
import 'package:senaecelik/widget/button/resume_button.dart';
import 'package:senaecelik/widget/button/social_link.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.500,
      padding: EdgeInsets.all(AppPadding.p20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: AppSizeHeight.s12,
          ),
          CircleAvatar(
            radius: AppSizeRadius.r60,
            backgroundImage: NetworkImage(
              StaticUserModel.user!.image,
            ),
          ),
          SizedBox(
            height: AppSizeHeight.s12,
          ),
          Text(
            "${StaticUserModel.user!.name} ${StaticUserModel.user!.surname}",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(
            height: AppSizeHeight.s12,
          ),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                ' Flutter Developer',
                speed: const Duration(milliseconds: 50),
                textStyle: Theme.of(context).textTheme.titleLarge,
              ),
              TyperAnimatedText(
                ' Mathematician',
                speed: const Duration(milliseconds: 50),
                textStyle: Theme.of(context).textTheme.titleLarge,
              ),
            ],
            isRepeatingAnimation: true,
            repeatForever: true,
          ),
          SizedBox(
            height: AppSizeHeight.s12,
          ),
          const SocialLinks(),
          SizedBox(
            height: AppSizeHeight.s12,
          ),
          const ResumeButton(),
        ],
      ),
    );
  }
}

// class SocialLinkMobile extends StatelessWidget {
//   const SocialLinkMobile({
//     super.key,

//   });

//   final AppProvider appProvider;

//   @override
//   Widget build(BuildContext context) {
//     return OverflowBar(
//       children: StaticUtils.socialIconURL
//           .asMap()
//           .entries
//           .map(
//             (e) => IconButton(
//               highlightColor: Colors.green.shade300,
//               splashRadius: AppSizeHeight.s1,
//               icon: Image.network(
//                 e.value,
//                 color: appProvider.isDark
//                     ? ColorManager.instance.white
//                     : ColorManager.instance.black,
//                 height: 28,
//               ),
//               iconSize: 32,
//               onPressed: () {
//                 html.window.open(StaticUtils.socialLinks[e.key], "");
//               },
//               hoverColor: Colors.green.shade100,
//             ),
//           )
//           .toList(),
//     );
//   }
// }
