// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/alarm.svg
  SvgGenImage get alarm => const SvgGenImage('assets/icons/alarm.svg');

  /// File path: assets/icons/back_arrow.svg
  SvgGenImage get backArrow => const SvgGenImage('assets/icons/back_arrow.svg');

  /// File path: assets/icons/bowl_steam.svg
  SvgGenImage get bowlSteam => const SvgGenImage('assets/icons/bowl_steam.svg');

  /// File path: assets/icons/gift.svg
  SvgGenImage get gift => const SvgGenImage('assets/icons/gift.svg');

  /// File path: assets/icons/additionalServices.png
  AssetGenImage get additionalServices =>
      const AssetGenImage('assets/icons/additional_services.png');

  /// File path: assets/icons/additional_services_hd.svg
  AssetGenImage get additionalServicesHd =>
      const AssetGenImage('assets/icons/additional_services_hd.svg');

  /// File path: assets/icons/hand_soap.svg
  SvgGenImage get handSoap => const SvgGenImage('assets/icons/hand_soap.svg');

  /// File path: assets/icons/intro_image.svg
  SvgGenImage get introImage =>
      const SvgGenImage('assets/icons/intro_image.svg');

  /// File path: assets/icons/shower.svg
  SvgGenImage get shower => const SvgGenImage('assets/icons/shower.svg');

  /// File path: assets/icons/solar_panel.svg
  SvgGenImage get solarPanel =>
      const SvgGenImage('assets/icons/solar_panel.svg');

  /// File path: assets/icons/tenge.png
  AssetGenImage get tenge => const AssetGenImage('assets/icons/tenge.png');

  /// File path: assets/icons/tshirt.svg
  SvgGenImage get tshirt => const SvgGenImage('assets/icons/tshirt.svg');

  /// File path: assets/icons/yellow_plus.svg
  SvgGenImage get yellowPlus => const SvgGenImage('assets/icons/yellow_plus.svg');  

  /// List of all assets
  List<dynamic> get values => [
    alarm,
    backArrow,
    bowlSteam,
    gift,
    additionalServices,
    additionalServicesHd,
    handSoap,
    introImage,
    shower,
    solarPanel,
    tenge,
    tshirt,
    yellowPlus,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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