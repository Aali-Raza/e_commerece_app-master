import 'package:custom_utils/custom_utils.dart';
import 'package:e_commerece_app/views/screens/screen_login.dart';
import 'package:e_commerece_app/views/screens/screen_signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Custom_UI/custom_image.dart';
import '../../Custom_UI/my_elevated_buton.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffCF2E2E),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 130.sp,
            ),
            // Custompng(
            //   name: 'logo',
            // ),

            SizedBox(
              height: 20,
            ),

            Text("Emergency \nFuel Supply ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.orange)),
            // SizedBox(height: 100,),
            Spacer(),
            MyElevatedButton(
              text: "Login",
              color: Color(0xffCF2E2E),
              backgroundcolor: Colors.white,
              onpress: () {
                Get.to(ScreenSignIn());
              },
              // backgroundcolor: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "don't have an account?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Get.to(screenLogIn());
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white, fontStyle: FontStyle.italic),
                    )),
              ],
            )
          ],
        ));
  }
}
