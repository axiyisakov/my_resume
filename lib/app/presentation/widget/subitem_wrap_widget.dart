import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:getwidget/getwidget.dart';
import 'package:my_resume/app/presentation/widget/default_text.dart';
import 'package:my_resume/core/extension/extension.dart';
import 'package:my_resume/core/theme/text_styles.dart';

class SubItemsWrapWidget extends StatelessWidget {
  final List<String> values;

  const SubItemsWrapWidget({
    super.key,
    required this.values,
  });

  @override
  Widget build(BuildContext context) {
    context.configureDesignSize();
    return Wrap(
      children: values
          .map(
            (e) => Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const GFBadge(
                      shape: GFBadgeShape.circle,
                      size: 10,
                      color: Colors.black,
                    ),
                    const Gap(5),
                    DefaultText(
                      text: e,
                      style: AppTextStyles.footNote12(context),
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
