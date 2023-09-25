import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:senaecelik/provider/scroll_provider.dart';
import 'package:senaecelik/resources/color_manager.dart';
import 'package:senaecelik/resources/styles_manager.dart';
import 'package:senaecelik/utils/navbar_util.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return NavigationDrawer(children: [
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
                child: Center(
                    child: Text(
              "Sena ÇELİK",
              style: getRegularStyle(
                  fontSize: 24, color: ColorManager.instance.black),
            ))),
            ...NavBarUtils.names.asMap().entries.map(
                  (e) => ListTile(
                    title: RichText(
                      text: TextSpan(
                        text: '# ',
                        style: getSemiBoldStyle(
                            fontSize: 18, color: Colors.green.shade200),
                        children: <TextSpan>[
                          TextSpan(
                              text: e.value,
                              style: getRegularStyle(
                                  fontSize: 18,
                                  color: ColorManager.instance.black)),
                        ],
                      ),
                    ),
                    onTap: () {
                      scrollProvider.scroll(e.key);
                    },
                  ),
                )
          ]),
    ]);
  }
}
