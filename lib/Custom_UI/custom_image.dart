import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Custompng extends StatelessWidget {
  String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/$name.png");
  }

  Custompng({
    required this.name,
  });
}

class CustomSvg extends StatelessWidget {
  String name;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("assets/images/$name.svg");
  }

  CustomSvg({
    required this.name,
  });
}
