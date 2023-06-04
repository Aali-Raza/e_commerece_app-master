import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyTextField extends StatelessWidget {
  String text;
  bool ShowHidePassward=true;
  bool? hide ;
  var controller;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10,bottom: 10),
      padding: EdgeInsets.all(7),
      height: 7.h,
      width: 100.w,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: Color(0xffD5DDE0)),
      ),
        child: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) =>
          TextField(
            obscureText: (hide==null)?false:(hide==false)?false: true,
            controller: controller ,
              decoration: InputDecoration(
            border: InputBorder.none,
            hintText: text,
            suffixIcon: GestureDetector(
              child:( hide == null)? SizedBox(height: 0,width: 0,)
                  : (hide == true) ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
              onTap: () {
                setState((){
                  if(hide ==true || hide ==false) {
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
    required this.controller,
  });
}
