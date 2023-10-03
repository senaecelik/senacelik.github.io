import 'package:flutter/cupertino.dart';

class ScrollProvider extends ChangeNotifier {
  final scrollController = ScrollController();

  ScrollController get controller => scrollController;

  int gloabalIndex = 0;
  scroll(int index) {
    double offset = index == 1
        ? 650
        : index == 2
            ? 650
            : index == 3
                ? 650
                : 245;
    controller.animateTo(
      offset * index.toDouble(),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  scrollMobile(int index) {
    gloabalIndex = index;
    double offset = index == 1
        ? 600
        : index == 2
            ? 710
            : index == 3
                ? 720
                : 900;
    controller.animateTo(
      offset * index.toDouble(),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  void change(int index) {
    gloabalIndex = index;
    notifyListeners();
  }
}
