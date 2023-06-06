import 'package:custom_utils/custom_utils.dart';
import 'package:e_commerece_app/views/screens/screen_app_home.dart';
import 'package:e_commerece_app/views/screens/screen_app_map.dart';
import 'package:e_commerece_app/views/screens/screen_forgotPasword.dart';
import 'package:e_commerece_app/views/screens/screen_forgotPosword_recoveryCode.dart';
import 'package:e_commerece_app/views/screens/screen_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Custom_UI/my_elevated_buton.dart';
import '../../Custom_UI/my_textfield.dart';

class ScreenSignIn extends StatelessWidget {
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  bool hiden = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // backgroundColor: Color(0xff343148FF),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Enter your email and password to Login your account",
                    style: TextStyle(
                        color: Color(0xff3E4958),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp),
                  ),
                  SizedBox(
                    height: 120.sp,
                  ),
                  MyTextField(
                    text: 'E-mail',
                    ShowHidePassward: false,
                    controller: email_controller,
                  ),
                  MyTextField(
                    text: 'Password',
                    ShowHidePassward: true,
                    controller: password_controller,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                        onTap: () {
                          Get.to(ForgotPasword());
                        },
                        child: Text("Forgot password?")),
                  ),
                  SizedBox(height: 40.sp),
                  MyElevatedButton(
                    text: "Login",
                    color: Colors.white,
                    backgroundcolor: Colors.red,
                    onpress: () {
                      Get.to(ScreenAppMap());
                    },
                  ),
                  SizedBox(
                    height: 120.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "don't have an account?",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(screenLogIn());
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.grey,
                                fontStyle: FontStyle.italic),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
