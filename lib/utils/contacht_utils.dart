import 'package:flutter/material.dart';
import 'package:senaecelik/data/model/static_user_model.dart';

class ContactUtils {
  static const List<IconData> contactIcon = [
    Icons.mail,
    Icons.location_on_outlined,
  ];

  static List<String> details = [
    StaticUserModel.user!.email,
    StaticUserModel.user!.adress,
  ];
}
