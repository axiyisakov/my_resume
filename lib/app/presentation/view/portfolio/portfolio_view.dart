import 'package:flutter/material.dart';
import 'package:my_resume/app/presentation/provider/provider.dart';
import 'package:my_resume/app/presentation/view/portfolio/portfolio.dart';
import 'package:provider/provider.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PortfolioProvider(),
      child: const PortfolioScreen(),
    );
  }
}
