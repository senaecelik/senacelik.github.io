import 'package:flutter/material.dart';

class NavbarActionButton extends StatefulWidget {
  const NavbarActionButton({super.key, required this.label});
  final String label;

  @override
  State<NavbarActionButton> createState() => _NavbarActionButtonState();
}

class _NavbarActionButtonState extends State<NavbarActionButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 120),
        child: OverflowBar(
          alignment: MainAxisAlignment.end,
          spacing: 20.0,
          children: <Widget>[
            TextButton(
              onPressed: () {},
              child: const Text('Home'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('About'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Services'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Project'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Contacts'),
            ),
            OutlinedButton(onPressed: () {}, child: Text("Resume"))
          ],
        ),
      ),
    );
  }
}
