import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:getwidget/components/radio_list_tile/gf_radio_list_tile.dart';
import 'package:my_resume/app/presentation/animation/animation.dart';
import 'package:my_resume/app/presentation/provider/cv_provider.dart';
import 'package:my_resume/app/presentation/widget/default_text.dart';
import 'package:my_resume/core/theme/colors.dart';
import 'package:my_resume/core/theme/spacing.dart';
import 'package:my_resume/core/theme/text_styles.dart';
import 'package:provider/provider.dart';

class PreferncesScreen extends StatelessWidget {
  const PreferncesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          SafeArea(child: Consumer<CVProvider>(builder: (context, provider, _) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(Spacing.ten),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Gap(Spacing.medium15),
                    DefaultText(
                      text: 'Theme',
                      style: AppTextStyles.headlineBold14(
                        context,
                        color: AppColors.accentBlue,
                      ),
                    ).headerTitleAnimation(),
                    GFRadioListTile(
                      title: DefaultText(
                        text: 'Dark Mode',
                        style: AppTextStyles.body14(context),
                      ),
                      size: Spacing.xLarge25,
                      padding: const EdgeInsets.symmetric(
                          horizontal: Spacing.medium15),
                      margin: EdgeInsets.zero,
                      activeBorderColor: Colors.green,
                      focusColor: Colors.green,
                      value: AdaptiveThemeMode.dark,
                      groupValue: provider.themeMode,
                      onChanged: (mode) => provider.changeTheme(context, mode),
                      inactiveIcon: null,
                    ),
                    const Gap(Spacing.medium15),
                    GFRadioListTile(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Spacing.medium15),
                      margin: EdgeInsets.zero,
                      title: DefaultText(
                        text: 'Light Mode',
                        style: AppTextStyles.body14(context),
                      ),
                      size: Spacing.xLarge25,
                      activeBorderColor: Colors.green,
                      focusColor: Colors.green,
                      value: AdaptiveThemeMode.light,
                      groupValue: provider.themeMode,
                      onChanged: (mode) => provider.changeTheme(context, mode),
                      inactiveIcon: null,
                    ),
                    const Gap(Spacing.medium15),
                    GFRadioListTile(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Spacing.medium15),
                      margin: EdgeInsets.zero,
                      title: DefaultText(
                        text: 'Sysytem Mode',
                        style: AppTextStyles.body14(context),
                      ),
                      size: Spacing.xLarge25,
                      activeBorderColor: Colors.green,
                      focusColor: Colors.green,
                      value: AdaptiveThemeMode.system,
                      groupValue: provider.themeMode,
                      onChanged: (mode) => provider.changeTheme(context, mode),
                      inactiveIcon: null,
                    ),
                    const Gap(Spacing.medium15),
                  ],
                ),
              ),
            )
          ],
        );
      })),
    );
  }
}
