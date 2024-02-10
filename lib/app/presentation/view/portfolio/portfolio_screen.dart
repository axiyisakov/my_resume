import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:getwidget/getwidget.dart';
import 'package:my_resume/app/data/models/portfolio.dart';
import 'package:my_resume/app/data/models/portfolio_item_status_enum.dart';
import 'package:my_resume/app/presentation/animation/animation.dart';
import 'package:my_resume/app/presentation/provider/provider.dart';
import 'package:my_resume/app/presentation/widget/default_text.dart';
import 'package:my_resume/core/theme/colors.dart';
import 'package:my_resume/core/theme/text_styles.dart';
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
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      itemCount: portfolio.projects.length,
      itemBuilder: (context, index) {
        final project = portfolio.projects[index];

        return GFCard(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          boxFit: BoxFit.cover,
          image: Image.asset(
            project.image,
            fit: BoxFit.cover,
          ),
          showImage: true,
          title: GFListTile(
            title: DefaultText(
              text: project.name,
              style: AppTextStyles.headlineBold14(
                context,
                color: AppColors.accentBlue,
              ),
            ).headerTitleAnimation(),
            icon: project.status == PortfolioItemStatusEnum.completed
                ? const GFBadge(
                    color: AppColors.accentGreen,
                    shape: GFBadgeShape.circle,
                    size: 20,
                  )
                : const GFBadge(
                    color: AppColors.accentBlue,
                    shape: GFBadgeShape.circle,
                    size: 20,
                  ),
          ),
          content: DefaultText(
            text: project.description,
            style: AppTextStyles.body14(
              context,
            ),
          ),
          buttonBar: GFButtonBar(
            children: [
              if (project.link != null)
                CupertinoButton.filled(
                  onPressed: () => context
                      .read<PortfolioProvider>()
                      .launchURL(project.link!),
                  child: DefaultText(
                    text: 'View Project',
                    style: AppTextStyles.headlineBold14(
                      context,
                      color: AppColors.accentGreen,
                    ),
                  ),
                ),
            ],
          ),
        ).textAnimation();
      },
    );
  }
}
