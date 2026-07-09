// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow_back_icon.png
  AssetGenImage get arrowBackIcon =>
      const AssetGenImage('assets/icons/arrow_back_icon.png');

  /// File path: assets/icons/home_explore_icon.png
  AssetGenImage get homeExploreIcon =>
      const AssetGenImage('assets/icons/home_explore_icon.png');

  /// File path: assets/icons/photo_change_icon.png
  AssetGenImage get photoChangeIcon =>
      const AssetGenImage('assets/icons/photo_change_icon.png');

  /// File path: assets/icons/profile_icon.png
  AssetGenImage get profileIcon =>
      const AssetGenImage('assets/icons/profile_icon.png');

  /// File path: assets/icons/result_icon.png
  AssetGenImage get resultIcon =>
      const AssetGenImage('assets/icons/result_icon.png');

  /// File path: assets/icons/search_icon.png
  AssetGenImage get searchIcon =>
      const AssetGenImage('assets/icons/search_icon.png');

  /// File path: assets/icons/timer_icon.png
  AssetGenImage get timerIcon =>
      const AssetGenImage('assets/icons/timer_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    arrowBackIcon,
    homeExploreIcon,
    photoChangeIcon,
    profileIcon,
    resultIcon,
    searchIcon,
    timerIcon,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/art_cat.png
  AssetGenImage get artCat => const AssetGenImage('assets/images/art_cat.png');

  /// File path: assets/images/blank_splash.png
  AssetGenImage get blankSplash =>
      const AssetGenImage('assets/images/blank_splash.png');

  /// File path: assets/images/language_cat.png
  AssetGenImage get languageCat =>
      const AssetGenImage('assets/images/language_cat.png');

  /// File path: assets/images/language_exam.png
  AssetGenImage get languageExam =>
      const AssetGenImage('assets/images/language_exam.png');

  /// File path: assets/images/math_cat.png
  AssetGenImage get mathCat =>
      const AssetGenImage('assets/images/math_cat.png');

  /// File path: assets/images/math_exam.png
  AssetGenImage get mathExam =>
      const AssetGenImage('assets/images/math_exam.png');

  /// File path: assets/images/science_cat.png
  AssetGenImage get scienceCat =>
      const AssetGenImage('assets/images/science_cat.png');

  /// File path: assets/images/time_out.png
  AssetGenImage get timeOut =>
      const AssetGenImage('assets/images/time_out.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    artCat,
    blankSplash,
    languageCat,
    languageExam,
    mathCat,
    mathExam,
    scienceCat,
    timeOut,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
