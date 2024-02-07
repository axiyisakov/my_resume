import 'package:flutter/cupertino.dart';
import 'package:my_resume/app/data/models/cv_subitem.dart';
import 'package:my_resume/app/presentation/widget/default_text.dart';
import 'package:my_resume/core/theme/fontsize.dart';

class AppTile extends StatelessWidget {
  final CVSubitem subitem;
  const AppTile({
    super.key,
    required this.subitem,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      title: DefaultText(
        text: subitem.name,
        style: AppTextStyles.bodyBold14(context),
      ),
      subtitle: Column(
        mainAxisSize: MainAxisSize.min,
        children: subitem.values
            .map((e) => SubItems(
                  title: e,
                  year: subitem.year,
                ))
            .toList(),
      ),
    );
  }
}

class SubItems extends StatelessWidget {
  final String title;
  final String? year;
  const SubItems({
    super.key,
    required this.title,
    this.year,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      title: DefaultText(
        text: title,
        style: AppTextStyles.footNote12(context),
      ),
      subtitle: DefaultText(
        text: year ?? '',
        style: AppTextStyles.footNote12(context),
      ),
    );
  }
}
