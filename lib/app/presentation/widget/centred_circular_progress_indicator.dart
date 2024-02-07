import 'package:flutter/material.dart';

class CenteredCircularProggressIndicator extends StatelessWidget {
  const CenteredCircularProggressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}
