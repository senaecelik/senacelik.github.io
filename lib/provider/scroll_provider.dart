import 'package:flutter/cupertino.dart';

class ScrollProvider extends ChangeNotifier {
  final scrollController = ScrollController();

  ScrollController get controller => scrollController;

  scroll(int index) {
    double offset = index == 1
        ? 750
        : index == 2
            ? 400
            : index == 3
                ? 220
                : 245;
    controller.animateTo(
      offset * index.toDouble(),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  scrollMobile(int index) {
    double offset = index == 1
        ? 290
        : index == 2
            ? 360
            : index == 3
                ? 300
                : 310;
    controller.animateTo(
      offset * index.toDouble(),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
