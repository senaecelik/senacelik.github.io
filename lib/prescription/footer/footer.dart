import 'package:flutter/material.dart';
import 'package:senaecelik/data/model/static_user_model.dart';
import 'package:senaecelik/resources/values_manager.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: AppMargin.m12),
        child: ListTile(
          dense: true,
          leading: Icon(Icons.copyright_outlined),
          title: Text(
            "Copyright 2023. Made by ${StaticUserModel.user!.name} ${StaticUserModel.user!.surname}",
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ));
  }
}
