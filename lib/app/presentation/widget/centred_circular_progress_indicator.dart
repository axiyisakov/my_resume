import 'package:flutter/material.dart';
import 'package:my_resume/core/extension/extension.dart';

class CenteredCircularProggressIndicator extends StatelessWidget {
  const CenteredCircularProggressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    context.configureDisignSize();
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}
