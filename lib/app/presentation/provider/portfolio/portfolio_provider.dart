import 'package:flutter/material.dart';
import 'package:my_resume/app/domain/usecases/cv/portfolio/get_portfolio.dart';
import 'package:my_resume/core/di/locator.dart';

class PortfolioProvider with ChangeNotifier {
  final GetPortfolio getPortfolio = sl<GetPortfolio>();
}
