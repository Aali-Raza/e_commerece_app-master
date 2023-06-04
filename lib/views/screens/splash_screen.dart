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
              height: 100,
            ),
            Custompng(
              name: 'tick',
              width: 150.sp,
            ),

            SizedBox(
              height: 20,
            ),

            Text("Fuel Supply ",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.white)),
            // SizedBox(height: 100,),
            Spacer(),
            MyElevatedButton(
              text: "Sign Up",
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
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return ScreenSignIn();
                  }));
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline),
                ))
          ],
        ));
  }
}
