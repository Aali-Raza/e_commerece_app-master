import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  String text;
  Callback onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
        style: ElevatedButton.styleFrom(
            minimumSize:  Size(280, 50),
            maximumSize:  Size(280, 50),
            backgroundColor:Color(0XFFCF2E2E)),
        child: Text(text));
  }

  CustomButton({
    required this.text,
    required this.onTap,
  });
}





