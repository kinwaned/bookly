import 'package:bookly/core/utils/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    Key? key,
    required this.borderRadius,
    required this.imgUrl,
  }) : super(key: key);

  final BorderRadiusGeometry borderRadius;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: imgUrl.isEmpty
            ? Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error,
                      size: 35,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Image not found',
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),textAlign:  TextAlign.center,
                    ),
                  ],
                ),
              )
            : CachedNetworkImage(
                imageUrl: imgUrl,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.fill,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: borderRadius,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: imageProvider,
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
