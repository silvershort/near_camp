import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class DefaultNetworkImage extends StatelessWidget {
  const DefaultNetworkImage({
    Key? key,
    required this.url,
    this.width,
    this.height,
    this.darken = false,
    this.boxFit,
  }) : super(key: key);
  final String url;
  final double? width;
  final double? height;
  final bool darken;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return ExtendedImage.network(
      url,
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? 180,
      color: darken ? Colors.black45 : null,
      colorBlendMode: darken ? BlendMode.multiply : null,
      fit: boxFit ?? BoxFit.cover,
      cache: true,
      loadStateChanged: (state) {
        if (state.extendedImageLoadState == LoadState.failed) {
          return ExtendedImage.asset(
            'assets/images/tour/no-thumbnail.png',
            color: Colors.black26,
            colorBlendMode: BlendMode.multiply,
            fit: BoxFit.cover,
          );
        }
      },
    );
  }
}
