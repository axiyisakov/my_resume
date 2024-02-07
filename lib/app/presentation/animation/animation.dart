import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension AppAnimations on Widget {
  Widget textAnimation() => animate(delay: 600.ms)
      .fadeIn(duration: 900.ms, delay: 300.ms)
      .shimmer(blendMode: BlendMode.srcOver, color: Colors.white12)
      .move(begin: const Offset(-16, 0), curve: Curves.easeOutQuad);

  Widget flipCard() {
    return animate().flip(
      duration: 500.ms,
      curve: Curves.easeInOut,
      direction: Axis.horizontal,
      alignment: Alignment.center,
      end: 1,
      begin: 0.0,
    );
  }

  Widget headerTitleAnimation() {
    return animate(onPlay: (controller) => controller.repeat())
        .shimmer(duration: 2.seconds, color: const Color(0xFF80DDFF))
        .animate() // this wraps the previous Animate in another Animate
        .fadeIn(duration: 2.seconds, curve: Curves.easeOutQuad)
        .slide();
  }
}
