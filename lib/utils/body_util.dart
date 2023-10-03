import 'package:flutter/material.dart';
import 'package:senaecelik/prescription/about/about.dart';
import 'package:senaecelik/prescription/contacts/contact.dart';
import 'package:senaecelik/prescription/footer/footer.dart';
import 'package:senaecelik/prescription/home/home.dart';
import 'package:senaecelik/prescription/project/project.dart';

class BodyUtils {
  static const List<Widget> views = [
    Home(),
    About(),
    Project(),
    Contact(),
    Footer(),
  ];
}