import 'package:flutter/material.dart';
import 'package:senaecelik/data/model/static_user_model.dart';

class ContactUtils {
  static const List<IconData> contactIcon = [
    Icons.home,
    Icons.mail,
  ];

  static List<String> details = [
    StaticUserModel.user!.adress,
    StaticUserModel.user!.email,
  ];
}
