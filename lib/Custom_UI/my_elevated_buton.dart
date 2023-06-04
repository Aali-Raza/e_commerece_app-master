import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
var text;
var color,backgroundcolor,onpress;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: ElevatedButton(
        onPressed: onpress,
        child: Text(
          text,
          style: TextStyle(color: color),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundcolor,
            fixedSize: Size(257, 43),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
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
