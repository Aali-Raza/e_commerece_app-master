import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';

class CustomExrImage extends StatelessWidget {
  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.sp,
      width: 70.sp,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
          image: DecorationImage(
              image: AssetImage("assets/images/$name.png"), fit: BoxFit.cover)),
    );
  }

  CustomExrImage({
    required this.name,
  });
}