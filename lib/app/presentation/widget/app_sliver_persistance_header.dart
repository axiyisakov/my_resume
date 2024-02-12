import 'package:flutter/material.dart';
import 'package:my_resume/core/extension/extension.dart';

class AppSPH extends SliverPersistentHeaderDelegate {
  final Widget child;
  const AppSPH({required this.child});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    context.configureDisignSize();
    return SizedBox.expand(
      child: Card(
        margin: EdgeInsets.zero,
        elevation: .0,
        child: Center(
          child: child,
        ),
      ),
    );
  }

  @override
  double get maxExtent => kToolbarHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(AppSPH oldDelegate) {
    return child != oldDelegate.child;
  }
}
