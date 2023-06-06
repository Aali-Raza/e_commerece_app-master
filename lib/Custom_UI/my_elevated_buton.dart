import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  var text;
  var color, backgroundcolor, onpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 23.sp),
      child: ElevatedButton(
        onPressed: onpress,
        child: Text(
          text,
          style: TextStyle(color: color, fontSize: 14.sp),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundcolor,
            fixedSize: Size(297, 43),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.sp))),
      ),
    );
  }

  MyElevatedButton({
    required this.text,
    required this.color,
    required this.backgroundcolor,
    required this.onpress,
  });
}
