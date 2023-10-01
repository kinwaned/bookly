import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomNewestBookImage extends StatelessWidget {
  const CustomNewestBookImage(
      {super.key, required this.borderRadius, required this.imgUrl});

  final BorderRadiusGeometry borderRadius;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: CachedNetworkImage(
        imageUrl: imgUrl,
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        fit: BoxFit.fill,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: imageProvider,
            ),
          ),
        ),
      ),
    );
  }
}
