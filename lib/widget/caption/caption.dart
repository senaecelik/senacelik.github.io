import 'package:flutter/material.dart';
import 'package:senaecelik/resources/color_manager.dart';
import 'package:senaecelik/resources/styles_manager.dart';
import 'package:senaecelik/responsive/responsive.dart';

class Caption extends StatelessWidget {
  const Caption({
    super.key, required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: RichText(
            text: TextSpan(
              text: '# ',
              style: getSemiBoldStyle(
                  fontSize: Responsive.isDesktop(context) ? 32 : 24,
                  color: Colors.green.shade200),
              children: <TextSpan>[
                TextSpan(
                    text: label,
                    style: getMediumStyle(
                        fontSize: Responsive.isDesktop(context) ? 32 : 24,
                        color: ColorManager.instance.black)),
              ],
            ),
          ),
        ),
        Expanded(
          child: Divider(
            height: 10,
            indent: 30,
            endIndent: 30,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
