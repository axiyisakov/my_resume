import 'package:flutter/cupertino.dart';

abstract interface class CVProviderBase {}

class CVProvider extends ChangeNotifier implements CVProviderBase {
  final CupertinoTabController pageController;

  CVProvider() : pageController = CupertinoTabController() {
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
