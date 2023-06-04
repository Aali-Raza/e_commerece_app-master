import 'package:flutter/material.dart';
import 'package:custom_utils/custom_utils.dart';
class TextHeading extends StatelessWidget {
  String text;
  int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      maxLines:maxLines  ?? 2,
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 18.sp,
        color: Colors.white,
        fontFamily: "comforta",
        height: 1.2,

    ),);
  }

  TextHeading({
    required this.text,
    this.maxLines,
  });
}
