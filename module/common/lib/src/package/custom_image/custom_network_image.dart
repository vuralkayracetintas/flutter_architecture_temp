import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/src/package/custom_image/custom_mem_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// It will provide to image caching and image loading from network
class CustomNetworkImage extends StatelessWidget {
  /// The line 'const CustomNetworkImage({super.key});'is defining a constructor
  /// for the CustomNetworkImage class
  const CustomNetworkImage({
    required this.imageUrl,
    super.key,
    this.emptyWidget,
    this.memCache = const CustomMemCache(height: 200, width: 200),
    this.boxFit = BoxFit.cover,
    this.loadingWidget,
    this.size,
  });

  /// Image source address
  final String? imageUrl;

  /// Whee image is not available then it will show empty widget
  final Widget? emptyWidget;

  /// Loading Widget
  final Widget? loadingWidget;

  /// Default value is [CustomMemCache(height :200 , width : 200)]
  final CustomMemCache memCache;

  /// Default value is [BoxFit.cover]
  final BoxFit? boxFit;

  /// Image Size
  final Size? size;

  @override
  Widget build(BuildContext context) {
    final url = imageUrl;

    if (url == null || url.isEmpty) return const SizedBox();
    return CachedNetworkImage(
      imageUrl: url,
      errorWidget: (context, url, error) {
        return emptyWidget ?? const SizedBox();
      },
      progressIndicatorBuilder: (context, url, progress) {
        return loadingWidget ??
            const Center(
              child: CircularProgressIndicator(),
            );
      },
      errorListener: (value) {
        if (kDebugMode) debugPrint('Error Image : $value');
      },
      height: size?.height,
      width: size?.width,
      fit: boxFit,
      memCacheHeight: memCache.height,
      memCacheWidth: memCache.width,
    );
  }
}
