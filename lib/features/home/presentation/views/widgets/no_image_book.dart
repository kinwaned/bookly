import 'package:flutter/material.dart';

class NoImageBook extends StatelessWidget {
  const NoImageBook({super.key, required this.borderRadius,});
  final BorderRadiusGeometry borderRadius;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          // color: Colors.red,
          image:  const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage('https://static.vecteezy.com/system/resources/previews/005/337/799/original/icon-image-not-found-free-vector.jpg'),
          ),
        ),
      ),
    );
  }
}