import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:my_resume/core/downloader_cv/downloader_cv.dart';
import 'package:my_resume/core/extension/extension.dart';
import 'package:my_resume/gen/assets.gen.dart';

abstract interface class CVProviderBase {
  void changeTheme(BuildContext context, AdaptiveThemeMode mode);
  void downloadCV();
  void retry();
}

@injectable
class CVProvider extends ChangeNotifier implements CVProviderBase {
  final CupertinoTabController pageController;
  var _themeMode = AdaptiveThemeMode.system;
  final DownloaderCV _downloader;

  var _isLoading = false;
  Object? _downloadError;
  CVProvider({
    required DownloaderCV downloader,
  })  : _downloader = downloader,
        pageController = CupertinoTabController();

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

  @override
  void downloadCV() async {
    _isLoading = true;
    try {
      final dataOrError = await _downloader.saveAndOpenFile(
        Assets.pdf.resumeCv,
      );
      final response = dataOrError.fold((error) => error, (data) => data);
      if (dataOrError.isLeft()) {
        _downloadError = response as Object;
        _isLoading = false;
      } else {
        _downloadError = null;
        _isLoading = false;
      }
    } catch (e) {
      _isLoading = false;
    }

    notifyListeners();
  }

  bool get isLoading => _isLoading;
  Object? get downloadError => _downloadError;

  @override
  void retry() {
    _downloadError = null;
    _isLoading = false;
    notifyListeners();
  }
}
