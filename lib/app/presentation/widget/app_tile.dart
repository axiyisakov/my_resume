import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:my_resume/app/data/models/cv_subitem.dart';
import 'package:my_resume/app/presentation/widget/default_text.dart';
import 'package:my_resume/core/extension/extension.dart';
import 'package:my_resume/core/theme/spacing.dart';
import 'package:my_resume/core/theme/text_styles.dart';

class AppTile extends StatelessWidget {
  final CVSubitem subitem;
  final Widget subTitle;
  const AppTile({
    super.key,
    required this.subitem,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    context.configureDisignSize();
    return GFListTile(
      padding: EdgeInsets.zero,
      margin: const EdgeInsets.symmetric(
        vertical: Spacing.five,
        horizontal: Spacing.eight,
      ),
      title: DefaultText(
        text: subitem.name,
        style: AppTextStyles.bodyBold14(context),
      ),
      subTitle: subTitle,
    );
  }
}
