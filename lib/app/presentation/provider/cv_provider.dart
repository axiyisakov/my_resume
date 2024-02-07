import 'package:flutter/material.dart';

abstract interface class CVProviderBase {}

class CVProvider extends ChangeNotifier implements CVProviderBase {
  final PageController pageController;

  CVProvider() : pageController = PageController() {
    pageController.addListener(() {
      notifyListeners();
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
