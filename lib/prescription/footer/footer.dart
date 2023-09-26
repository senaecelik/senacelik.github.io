import 'package:flutter/material.dart';
import 'package:senaecelik/resources/values_manager.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(AppMargin.m40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.copyright_outlined,
                  size: 16,
                ),
                SizedBox(
                  width: AppSizeWidth.s2,
                ),
                Text(
                  "Copyright 2023. Made by Sena ÇELİK",
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
          ],
        ));
  }
}
