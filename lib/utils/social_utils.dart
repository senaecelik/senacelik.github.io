

import 'package:senaecelik/data/model/static_user_model.dart';

class SocialUtils{
   static const List<String> socialIconURL = [
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
  ];

  static List<String> socialLinks = [
    StaticUserModel.user!.socialLink.instagram,
    StaticUserModel.user!.socialLink.linkedin,
    StaticUserModel.user!.socialLink.github,
    StaticUserModel.user!.socialLink.medium,
  ];

    static String resume = StaticUserModel.user!.resumeLink;

}