// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
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
            backgroundImage: const NetworkImage(
              "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAe1BMVEX///8AAADz8/P7+/v29vbw8PDs7Ozo6Oivr6/l5eWnp6fAwMDZ2dnT09Pe3t6Ojo6BgYFiYmK2trZtbW1KSkrIyMhRUVFFRUUrKytzc3MhISE6OjqcnJzV1dWIiIiXl5czMzM/Pz9bW1smJiYQEBANDQ0aGhp4eHhfX18x6tqxAAAMFklEQVR4nO2d6ZaquhKAdxgUGURUnAdUHN7/CS+22jJkqCQV4Kzb36+z9mmBgqSmVCr//v3xxx//DzjuIJr6x3gyeyzmy+VycU7uh3jnpWPX6vrZdHHDIF4vLoTJdZlMvP2o6+dUI5yuT7e6RKdZfNx50yAIPP94SLL3P2fnXep0/cBShP6iJlo+P05D6p8GfrL6+ZPLIfhvSDmYrmvSbRKPKtwXK/Jmp+efLo6h3c5jqjJqfrxJBFQnw2DyHLXZJDL7jBrY3rI+7x6p3CcZ/ryh22Fs6BG1SGd18fLDQOE69jR5Tkq/Z4ZksMsa8h2Vn9GdnosLrHs0Wsf3pqWLXa1LDo85IfMp0gNqsj835VsM9a+bFlMy9/Wvo0tUV54FV6R3Hz7Hht+tkYwo348sVBQMnUFcaFa/OxM5TCjykRj1Hm4h46qj+ehMaPKRwMR9sj32VQFMqfLlJmz1qDC1a7yhD2NMUTAFGwQdSiM6FSrHzKUZxFT5yEXPCPLwCFm2F0eGK7qAG3MCFtOxCFmOBq9f5kiXjxBDQ/RDcCHzNj7jcM4S0Lgf6RQegGf6JgwV+qQNo5USkhi2/xQf+83E7I3fuA9yESQMtBgwRyjZGrxthZ3JkRrlTAFJe5o8NTdePLZ8rZpja0kWRgIOhpX/YWnihmzuJDNgmRppmDJtJxyKyYjuALN1TMEa+25CCqOVol7QOvEEJB3kxfa4Bniw5QqIG/MCGV8RrYbL8LQ7/IQFoxuaiFZjCakHn7DA3SCJ6DaSvTUMhxRsLBwRncZiRI0Zwk0UGWww0kJcM/Gky+T7EOH2tIRohUz2itY+mAYhkttViKgZatAzhmXkPNLw8DE88yOKs74nuVYWzhcKSGRyM2F1RKwxdFRAVhq/TsUCLiQud9AcAHR8kij/diQWUEJdWzSdheHRHpQtsi0yhE/Ak8Che37q7//LQtVmcOOlN3OJx6CDEK87NzWvA6BlJDw2dvyMYLNDclH6FQSovR1zroGQHvTIXfo39gYi4A1qK+pVRGV20g/XZCY/FNiJ0TLQaTjgXWSFkeO9SRnmf087CuIAvNyOexWMfEQoZZnFIeEHaCKB791C3xOXo1wkBTEUT6CKhn+Vs4JATbZw2wzy1l4Ax77Dv8oKJdAYkwf4b23gGCUEfHM+OImeGJ5942W3K9yAF2xHwn+rHDgYIA73ixPw1lxjUbwopHA4heosYVj/C1hF8C+Dtuoxgy2BgdWMRGDAT7iiLQoMYe9ckP4tA06z8ZMheLnrGOI98FYJlSXkjwvE1VXAiId53G/g4Stv4QMjCP7giT1wUFT4Ae4K8kYGalXeSpSXsjlbeJpk8DufmBfBzZlPRR9R6hOSK/zOTCOLZQw/ZBv+/wf7ay8k7syKx7CrYwQfkV3xREcmAUSfivirHlduWA7JH5aRil0pJuNqoODW5701CXfmhZyttup14WYqf3jmh1qZzkPW34pKoXV+N1RHFbMnz1BWQHBw8cUNDskpW87i1Njq/4hdacssjWXT2Qo3j4Sl420Jn/sDbtkOEinLYEjrGdJWVaksN0YQxctLs8h6uak1ZqTdFATEd0lQGNGXXmX9mRco2Vx0VlS/5qEkoYxr2h47mpK31ATE38mFwYA2TIFrMQ3gq8BtsqQE5yqa9Ide6pojaYSdjoK5f9FhXRubcTPDD1vUptLH9gD2qhEUKPikHzBzZWisG0oenspv0sUWVhFBY2hpCEiyDiQQMapH55GOhC1vYIWxqa2X8ksJhPQwTLzXsoqKLtsHnJV4VKa1iagnIE7VDy6janQun6Gp06NWK2+qYY9KeF/lanIftxLziqrRVDRPWt6gJybelF1T6UQpBXg1Szt4lWqfE4KEHezR4zIu+1qWzMIvm34l3qyyVyOq6PlPimjfSgXMeyQJ+xVmnEuRq1qajcayR60P19n3vzWCwzqr/iQ14lKICCt5BmK+NwcQryQhtGAWxqwnIzUq5fZ1AnwKm37kUMOvQbRPuBIWOrUPXur4G104UmVCMI7dL0oNvxlF64ovIck7bJX3wv0qPdeAgAWrXbdj1fn2lTQkYcGs01Xwy2/mQVCGrSmkN+hquGa/jqlRCQtWs2M06kDM7W8ew7SELzEXdz9td4lj+xvrtCLhm0uym7YlZzcSvthO/LH5jihdSvjkluwMxyEtz0MqK6MN2L+61Jw9hBAbW/RY/drDbiUs/HRDfsHm16dRLTTBY25CRif/9UsdnGSinoz4Wsf9xhY2v5VXS9yx/fRRqZqJ1dGhXXLkDqjj0oIYbp5GnRmq8xqWlqZRc206bDAdurSUawNv/DUP4kj1SxLK7Dk0Dd56+aHU8ESv1gQZtJrcWWlFE2vtCQesdch5ae3JldyyZhgcEZ1KIVMvTP4XlHVIt1JuolkwhA5GA/2osiUBcXkNB4QFLP9aXiFSLfI2h35kPKmUevdLmT65aqdxsups7lqgJtp7AGr7JPoRXVTQbN4b1moTe6dqiO5U9PJqoKJfuoePxG5/CkltT4ndtTg0tAx/ozRb2C64CzRyN+PGIO9RiPhFrslcBa+x36JXAdQv6kUdj0bpObTLXrtkqgJaFL8Po4gWH9WPGFGa5eFV72GSKUo4oZzs090CFBfFdH9Oi796aS8UK1brLtuLPiXcSih1XD9Qj58SNKjsCqVdY4wkAXKFIhIqVj9ltIDrX6D/g8IwnTG6yjicQ8c6RD5l4zJ/0+zs3wfk94o3fdIPLWVrtovHeSHRc0tawi077GohlzELXot69mgK9RNlV9wizi+M65pJRW2MYCuzsgtuCS+JZTbAWDXe7R6i3CRD/SHXXZdrmygJ7QRRCzAxJBuK3bndL02ma+g60Rb7GbmUgGxT8cJcVpG1xxTQT1TK5scC3WukbP8HZrWMuLm2TELKFTqypj4i577CJJhMjCj6hMZq3HhnWAjHjYSE4k+Isq2bArfCQuQtShjE+wZQdGREQm6bS1H3H7jvPQK9DRMpKYFJE3RwggfBZ9jR0id8CQXVFQKbCJYwBa5XGUh/C55RMBGho9TeQPNWyo3NmOj12IamhY9g3wC/7lvwjII0H9BaMPpBqtxRHoGGE1go4GLwUuYEe+zssKACSFDfCguBfSnvDn4QCwxB3xPBCwUVnowkSxuQA0X+wWMuPw6GndezEPTTb4CcHuZOJUHyBJQTPkqnc5D1KdfkC94mpIxvr1BbjJyV4jimIrcUYA6dq0o/NfFRwDJwvA3RsdiAnSYPtUOxcE0G0ySKwjWAojkq1k8NcDMajA6ZwmoscTIxUC7wx3XBc6pBFpebCafhUKMNLrJVpDwrwD8UzTArz5QFxNY2ZFJTGgNAWl/0fey53tF7yCXueflA9TFoNU80SGeazajxtybOd0E4HIbBUWQkXmwEDYvu2i3Tu95fKnCnDwhV/aNuC974G72PKBvBOq3j5ydedrrF4D0QkRsw7ND2uXUnItdUHJG+4JPQ2IqUAF6q/IAoYGdfkTcI1yjbv764XRgNzsGB9hm9TbrVQXEm25YPtgbORrFbL5Nmq5lCLxjp+oLshotgj9EpuRk6lK7dGlvmV5qQs7HGYVGL+oalSAZLo2dMtadv7ownCIyfv9TS7iFWFvhOMqXCbxnSNmINhoDhppWG2o55s0HvKG3HJG+p06Tp7TUnqqqMViRprUNx41BYVKhLcdaa5K22Jw4MNOZ9Q51pfvHvLbeYdkwpVVreJd2SZQeHoIxNVIXfKKnBcIHaekiGFD3VSLHz44f21nwdPOUT92hcmqpkn9TL39vG9vA22sQNVZKeCVkbCiMk8HDUalLPjNpe4effO/1+vwT6/nhS1zDjIhq9xX1oXv9ir9fTbl1Liw794p0tvZ6csfDG8lUHa+5Xv5QzfZqhe39OAvkSTuTDjs2kuvg99J9LUouOzB+A9C5jPhZxxVEZpJPnjraz18OzBks4UQzyAx5xWlaTYXD/WU9cT/uhPAW4U04N7mZx8NPSzHMi7/BaLF3u+nigKZNRMFl+8la3bJlMdt40iN5tym3HckfpdBfP3hsts8Tv3/GCAKxxEM/mJfVzu6wKLrfSQk+WTLx9vyeeEMsdB358mC22m2v5o8Y7Lxq4XR9k8scff7TA/wB+Ba/pjmtIGQAAAABJRU5ErkJggg==",
            ),
          ),
          SizedBox(
            height: AppSizeHeight.s12,
          ),
          Text(
            "Sena ÇELİK",
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
