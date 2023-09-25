import 'package:flutter/material.dart';
import 'package:senaecelik/widget/button/navbar_action_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NavbarActionButton(label: "Hakkımda"),
    );
  }
}
