import 'package:flutter/material.dart';

import '../../constants.dart';
import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.textColor, required this.borderRadius, required this.backgroundColor, required this.fontWeight, required this.fontSize});

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final FontWeight fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius
            )
          ),
        child: Text(text, style: Styles.textStyle20.copyWith(
          fontSize: fontSize,
            fontFamily: kMontserrat,
            fontWeight: fontWeight,
            color: textColor),
        )),
    );
  }
}
