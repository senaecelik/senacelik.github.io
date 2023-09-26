import 'package:flutter/cupertino.dart';

class ScrollProvider extends ChangeNotifier {
  final scrollController = ScrollController();

  ScrollController get controller => scrollController;

  scroll(int index) {
    double offset = index == 1
        ? 600
        : index == 2
            ? 600
            : index == 3
                ? 600
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
            ? 450
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
