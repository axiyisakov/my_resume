import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:my_resume/core/theme/colors.dart';

class AppExpandableText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const AppExpandableText({
    super.key,
    required this.text,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ExpandableText(
      text,
      expandText: 'show more',
      collapseText: 'show less',
      maxLines: 4,
      style: style,
      linkColor: AppColors.accentBlue,
    );
  }
}
