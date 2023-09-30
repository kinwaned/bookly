import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.borderRadius, required this.imgUrl});
  final BorderRadiusGeometry borderRadius;
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          // color: Colors.red,
          image:  DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imgUrl),
          ),
        ),
      ),
    );
  }
}
