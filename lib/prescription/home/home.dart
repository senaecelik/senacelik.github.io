import 'package:flutter/material.dart';
import 'package:senaecelik/prescription/home/home_desktop.dart';
import 'package:senaecelik/responsive/responsive.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Responsive(
        mobile: HomeDesktop(), tablet: HomeDesktop(), desktop: HomeDesktop());
  }
}
