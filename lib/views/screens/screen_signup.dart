import 'package:custom_utils/custom_utils.dart';
import 'package:e_commerece_app_master/views/screens/screen_app_map.dart';
import 'package:e_commerece_app_master/views/screens/screen_app_map2.dart';
import 'package:e_commerece_app_master/views/screens/screen_forgotPasword.dart';
import 'package:e_commerece_app_master/views/screens/screen_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Custom_UI/my_elevated_buton.dart';
import '../../Custom_UI/my_textfield.dart';
import '../../controllers/my_controllers.dart';

class ScreenSignIn extends StatelessWidget {
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  bool hiden = true;
  MyController userController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // backgroundColor: Color(0xff343148FF),
        appBar: AppBar(
          backgroundColor: Color(0xff0B3385),
          elevation: 0,
          leading: IconButton(icon:
            Icon(Icons.arrow_back_ios_new),
            color: Colors.white, onPressed: () { Get.back(); },
          ),
          centerTitle: true,
          title: Text(
            "Fule Supply",
            style: TextStyle(color: Colors.white),
          ),
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
                    height: 100.sp,
                  ),
                  MyTextField(
                    text: 'E-mail',
                    ShowHidePassward: false,
                    controller: userController.email_controller.value,
                  ),
                  MyTextField(
                    text: 'Password',
                    ShowHidePassward: true,
                    controller: userController.password_controller.value,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                        onTap: () {
                          Get.to(ForgetPasword());
                        },
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        )),
                  ),
                  SizedBox(height: 50.sp),
                  MyElevatedButton(
                    text: "Login",
                    color: Colors.white,
                    backgroundcolor: Color(0xff0B3385),
                    onpress: () async {
                      var response = await userController.LoginUser();
                      if (response == "done") {
                        Get.snackbar("Success", "User Login");
                        Get.offAll(ScreenAppMap2());
                        userController.password_controller.value.clear();
                        userController.email_controller.value.clear();
                        userController.update();
                      } else {
                        Get.snackbar("Alert", response.toString());

                        userController.update();
                      }
                    },
                  ),
                  SizedBox(
                    height: 130.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "don't have an account?",
                        style: TextStyle(fontSize: 15),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(screenLogIn());
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: Color(0xff0B3385),
                                fontWeight: FontWeight.bold,
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
