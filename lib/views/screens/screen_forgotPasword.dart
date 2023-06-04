import 'package:e_commerece_app/views/screens/screen_forgotPosword_recoveryCode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ForgotPasword extends StatefulWidget {
  @override
  State<ForgotPasword> createState() => _ForgotPaswordState();
}

class _ForgotPaswordState extends State<ForgotPasword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Forgot password",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40, left: 30, right: 30),
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Select which contact details should\nwe use to reset your password:",
                  style: TextStyle(color: Color(0xff3E4958)),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(ScreenAppRecoverycode());
                  },
                  child: Container(
                    height: 17.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 1, color: Color(0xffD5DDE0)),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: ListTile(
                        leading: Container(
                          height: 16.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.1),
                            borderRadius: BorderRadius.circular(12),
                            border:
                                Border.all(width: 1, color: Color(0xffD5DDE0)),
                          ),
                          child: Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                        ),
                        title: Text(
                          "via sms:",
                          style: TextStyle(
                              color: Color(0xff3E4958),
                              fontWeight: FontWeight.w400,
                              fontSize: 17),
                        ),
                        subtitle: Text(
                          "*** *******61",
                          style: TextStyle(
                              color: Color(0xff3E4958),
                              fontWeight: FontWeight.w400,
                              fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 17.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: Color(0xffD5DDE0)),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: ListTile(
                      leading: Container(
                        height: 16.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.1),
                          borderRadius: BorderRadius.circular(12),
                          border:
                              Border.all(width: 1, color: Color(0xffD5DDE0)),
                        ),
                        child: Icon(
                          Icons.message_outlined,
                          color: Colors.black,
                        ),
                      ),
                      title: Text(
                        "via email:",
                        style: TextStyle(
                            color: Color(0xff3E4958),
                            fontWeight: FontWeight.w400,
                            fontSize: 17),
                      ),
                      subtitle: Text(
                        "****ic16@gmail.com",
                        style: TextStyle(
                            color: Color(0xff3E4958),
                            fontWeight: FontWeight.w400,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
