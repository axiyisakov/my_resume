import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_resume/core/extension/extension.dart';

class DefaultText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const DefaultText({
    super.key,
    required this.text,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    context.configureDisignSize();
    return AutoSizeText(
      text,
      style: style,
      maxLines: null,
      overflow: TextOverflow.visible,
    );
  }
}
