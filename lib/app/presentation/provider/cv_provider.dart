import 'package:flutter/cupertino.dart';

abstract interface class CVProviderBase {
  void changeTheme(bool value);
}

class CVProvider extends ChangeNotifier implements CVProviderBase {
  final CupertinoTabController pageController;
  var _isLightTheme = true;

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

  bool get isLightTheme => _isLightTheme;

  @override
  void changeTheme(bool value) {
    _isLightTheme = value;
    notifyListeners();
  }
}
