
import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Custompng extends StatelessWidget {
  String name;
var width;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/$name.png",
      width: width,
    );
  }

  Custompng({
    required this.name,
    required this.width,
  });
}

class Customsvg extends StatelessWidget {
  String name;
var width;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/$name.png",
      width: width,
    );
  }

  Customsvg({
    required this.name,
    required this.width,
  });
}

