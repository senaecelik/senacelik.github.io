import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("2023"),
        SizedBox(
          width: 30,
        ),
        Container(
          child: Row(
            children: [
              Icon(Icons.copyright_outlined),
              Text("Sena Ercihan ÇELİK")
            ],
          ),
        ),
      ],
    ));
  }
}
