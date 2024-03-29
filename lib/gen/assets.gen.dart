/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImageGen {
  const $AssetsImageGen();

  /// File path: assets/image/avatar.png
  AssetGenImage get avatar => const AssetGenImage('assets/image/avatar.png');

  $AssetsImagePortfolioGen get portfolio => const $AssetsImagePortfolioGen();

  /// List of all assets
  List<AssetGenImage> get values => [avatar];
}

class $AssetsPdfGen {
  const $AssetsPdfGen();

  /// File path: assets/pdf/resume_cv.pdf
  String get resumeCv => 'assets/pdf/resume_cv.pdf';

  /// List of all assets
  List<String> get values => [resumeCv];
}

class $AssetsImagePortfolioGen {
  const $AssetsImagePortfolioGen();

  /// File path: assets/image/portfolio/itmed.png
  AssetGenImage get itmed =>
      const AssetGenImage('assets/image/portfolio/itmed.png');

  /// File path: assets/image/portfolio/movies.png
  AssetGenImage get movies =>
      const AssetGenImage('assets/image/portfolio/movies.png');

  /// File path: assets/image/portfolio/my_xabar.png
  AssetGenImage get myXabar =>
      const AssetGenImage('assets/image/portfolio/my_xabar.png');

  /// File path: assets/image/portfolio/ungmobile.png
  AssetGenImage get ungmobile =>
      const AssetGenImage('assets/image/portfolio/ungmobile.png');

  /// List of all assets
  List<AssetGenImage> get values => [itmed, movies, myXabar, ungmobile];
}

class Assets {
  Assets._();

  static const String cv = 'assets/cv.json';
  static const $AssetsImageGen image = $AssetsImageGen();
  static const $AssetsPdfGen pdf = $AssetsPdfGen();
  static const String portfolio = 'assets/portfolio.json';

  /// List of all assets
  static List<String> get values => [cv, portfolio];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
