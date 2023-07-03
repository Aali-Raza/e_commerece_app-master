import 'package:custom_utils/custom_utils.dart';
import 'package:e_commerece_app_master/views/screens/screen_login.dart';
import 'package:e_commerece_app_master/views/screens/screen_signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerece_app_master/Custom_UI/my_elevated_buton.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/splash3.jpg',
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50.sp,
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text("Emergency Fule Supply ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    // fontFamily: "PoetsenOne_Regular"
                  )),
              Spacer(),
              MyElevatedButton(
                text: "Login",
                color: Color(0xff0B3385),
                backgroundcolor: Colors.white,
                onpress: () {
                  Get.to(ScreenSignIn());
                },
              ),
              SizedBox(
                height: 10.sp,
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
                            color:Colors.white70, fontStyle: FontStyle.italic),
                      )),
                ],
              )
            ],
          ),
        ));
  }
}
