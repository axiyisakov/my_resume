import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:my_resume/app/data/models/portfolio.dart';
import 'package:my_resume/app/domain/usecases/cv/portfolio/get_portfolio.dart';
import 'package:my_resume/core/di/locator.dart';
import 'package:my_resume/core/services/launcher.dart';

@injectable
class PortfolioProvider with ChangeNotifier {
  final GetPortfolio getPortfolio = sl<GetPortfolio>();
  final AppUrlLauncher appUrlLauncher = sl<AppUrlLauncher>();
  var _isLoading = true;
  Portfolio? _portfolio;
  Object? _error;
  PortfolioProvider() {
    _fetchPortfolio();
  }

  void _fetchPortfolio() async {
    setLoading(true);
    final result = await getPortfolio(const NoParams());
    result.fold(
      (error) {
        setLoading(false);
      },
      (data) {
        _portfolio = data;
        setLoading(false);
      },
    );
    notifyListeners();
  }

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void launchURL(String url) async {
    _isLoading = true;
    final result = await appUrlLauncher.launchUrl(url);
    result.fold(
      (error) {
        _isLoading = false;
        _error = error;
        notifyListeners();
      },
      (data) {
        _isLoading = false;
        notifyListeners();
      },
    );
  }

  Object? get error => _error;
  bool get isLoading => _isLoading;
  Portfolio? get portfolio => _portfolio;
}
