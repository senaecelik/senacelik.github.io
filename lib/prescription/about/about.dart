import 'package:flutter/material.dart';
import 'package:senaecelik/app_dimension.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Text("About"),
    );
  }
}
