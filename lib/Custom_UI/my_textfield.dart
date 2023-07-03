import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyTextField extends StatelessWidget {
  String text;
  bool ShowHidePassward = true;
  bool? hide;
  bool? isNumberFeild=false;

  var controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 7, bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 4.sp),
      height: 38.sp,
      width: 100.w,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: Color(0xffD5DDE0)),
      ),
      child: StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) => TextField(
            obscureText: (hide == null)
                ? false
                : (hide == false)
                ? false
                : true,
            controller: controller,keyboardType:isNumberFeild==true? TextInputType.number:TextInputType.text,
            decoration: InputDecoration(

              border: InputBorder.none,
              hintText: text,
              suffixIcon: GestureDetector(
                child: (hide == null)
                    ? SizedBox(
                  height: 0,
                  width: 0,
                )
                    : (hide == true)
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
                onTap: () {
                  setState(() {
                    if (hide == true || hide == false) {
                      hide = !hide!;
                    }
                  });
                },
              ),
            )),
      ),
    );
  }

  MyTextField({
    required this.text,
    required this.ShowHidePassward,
    this.hide,
    required this.controller,this.isNumberFeild
  });
}
