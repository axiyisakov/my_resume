import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:my_resume/app/data/models/cv_subitem.dart';
import 'package:my_resume/app/presentation/widget/default_text.dart';
import 'package:my_resume/core/theme/fontsize.dart';

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
    return GFListTile(
      padding: EdgeInsets.zero,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      title: DefaultText(
        text: subitem.name,
        style: AppTextStyles.bodyBold14(context),
      ),
      subTitle: subTitle,
    );
  }
}
