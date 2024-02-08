import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:my_resume/app/presentation/widget/default_text.dart';
import 'package:my_resume/core/theme/text_styles.dart';

class SubItemsWidget extends StatelessWidget {
  final List<String> values;
  final String? year;

  const SubItemsWidget({
    super.key,
    required this.values,
    this.year,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: values
          .map((e) => GFListTile(
                padding: EdgeInsets.zero,
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                avatar: const GFBadge(
                  shape: GFBadgeShape.circle,
                  size: 10,
                  color: Colors.black,
                ),
                title: DefaultText(
                  text: e,
                  style: AppTextStyles.footNote12(context),
                ),
                subTitle: year != null
                    ? DefaultText(
                        text: year ?? '',
                        style: AppTextStyles.footNote12(context),
                      )
                    : null,
              ))
          .toList(),
    );
  }
}
