import 'package:flutter/material.dart';
import 'package:my_resume/app/data/models/portfolio.dart';
import 'package:my_resume/app/domain/usecases/cv/portfolio/get_portfolio.dart';
import 'package:my_resume/core/di/locator.dart';

class PortfolioProvider with ChangeNotifier {
  final GetPortfolio getPortfolio = sl<GetPortfolio>();
  var _isLoading = true;
  Portfolio? _portfolio;

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

  bool get isLoading => _isLoading;
  Portfolio? get portfolio => _portfolio;
}
