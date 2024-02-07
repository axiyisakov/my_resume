import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:getwidget/getwidget.dart';
import 'package:my_resume/app/data/models/portfolio.dart';
import 'package:my_resume/app/presentation/provider/provider.dart';
import 'package:provider/provider.dart';

class PortfolioScreen extends HookWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<PortfolioProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return PortfolioBody(
              portfolio: provider.portfolio!,
            );
          }
        },
      ),
    );
  }
}

class PortfolioBody extends StatelessWidget {
  final Portfolio portfolio;
  const PortfolioBody({super.key, required this.portfolio});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: portfolio.projects.length,
        itemBuilder: (context, index) {
          final project = portfolio.projects[index];
          return GFListTile(
            avatar: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                project.image,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            titleText: project.name,
            subTitleText: project.description,
          );
        });
  }
}
