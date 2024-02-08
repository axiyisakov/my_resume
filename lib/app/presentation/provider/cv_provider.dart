import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_resume/core/extension/extension.dart';

abstract interface class CVProviderBase {
  void changeTheme(BuildContext context, AdaptiveThemeMode mode);
}

class CVProvider extends ChangeNotifier implements CVProviderBase {
  final CupertinoTabController pageController;
  var _themeMode = AdaptiveThemeMode.system;

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

  AdaptiveThemeMode get themeMode => _themeMode;

  @override
  void changeTheme(BuildContext context, AdaptiveThemeMode mode) {
    _themeMode = mode;
    context.changeTheme(mode);
    notifyListeners();
  }
}
