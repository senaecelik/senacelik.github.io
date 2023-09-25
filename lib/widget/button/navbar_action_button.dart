import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:senaecelik/provider/scroll_provider.dart';
import 'package:senaecelik/resources/color_manager.dart';
import 'package:senaecelik/resources/styles_manager.dart';
import 'package:senaecelik/resources/values_manager.dart';

class NavbarActionButton extends StatelessWidget {
  const NavbarActionButton({
    super.key,
    required this.label,
    required this.index,
  });
  final String label;
  final int index;

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Padding(
      padding: EdgeInsets.only(right: AppPadding.p12),
      child: TextButton(
          onPressed: () {
            scrollProvider.scroll(index);
          },
          child: RichText(
            text: TextSpan(
              text: '# ',
              style:
                  getSemiBoldStyle(fontSize: 18, color: Colors.green.shade200),
              children: <TextSpan>[
                TextSpan(
                    text: label,
                    style: getRegularStyle(
                        fontSize: 18, color: ColorManager.instance.black)),
              ],
            ),
          )),
    );
  }
}
