import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_resume/app/presentation/widget/centred_circular_progress_indicator.dart';
import 'package:my_resume/core/extension/extension.dart';

class TheImage extends StatelessWidget {
  final String imageUrl;
  final num? precent;
  const TheImage({
    super.key,
    required this.imageUrl,
    required this.precent,
  });

  @override
  Widget build(BuildContext context) {
    context.configureDisignSize();
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: (143 / MediaQuery.sizeOf(context).width) * 100,
      height: 212,
      imageBuilder: (context, imageProvider) => Card(
        elevation: 10,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      fit: BoxFit.cover,
      placeholder: (ctx, url) => const CenteredCircularProggressIndicator(),
      errorWidget: (context, url, error) =>
          const CenteredCircularProggressIndicator(),
    );
  }
}
