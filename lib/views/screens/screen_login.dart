import 'package:custom_utils/custom_utils.dart';
import 'package:e_commerece_app/Custom_UI/my_elevated_buton.dart';
import 'package:e_commerece_app/views/screens/screen_app_home.dart';
import 'package:e_commerece_app/views/screens/screen_signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Custom_UI/custom_button.dart';
import '../../Custom_UI/my_textfield.dart';

class screenLogIn extends StatefulWidget {
  @override
  State<screenLogIn> createState() => _screenLogInState();
}

class _screenLogInState extends State<screenLogIn> {
  var name_controller = TextEditingController();

  var email_controller = TextEditingController();

  var pasword_controller = TextEditingController();
  var phone_controller = TextEditingController();
  var confirm_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        title: Text(
          "Sign Up",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text("Name"),
              MyTextField(
                text: 'name',
                ShowHidePassward: false,
                controller: name_controller,
              ),
              Text("E-mail"),
              MyTextField(
                text: 'E-mail',
                ShowHidePassward: false,
                controller: email_controller,
              ),
              Text("phone"),
              MyTextField(
                text: 'phone',
                ShowHidePassward: true,
                controller: phone_controller,
              ),
              Text("Password"),
              MyTextField(
                text: 'Password',
                ShowHidePassward: true,
                controller: pasword_controller,
              ),
              Text("confirm password"),
              MyTextField(
                text: 'confirm password',
                ShowHidePassward: true,
                controller: phone_controller,
              ),
              SizedBox(
                height: 30,
              ),
              MyElevatedButton(
                text: 'Sign In',
                onpress: () {
                  Get.to(Get.to(ScreenAppHome()));
                },
                color: Colors.white,
                backgroundcolor: Colors.red,
              ),
              SizedBox(
                height: 30.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "already have an account?",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(ScreenSignIn());
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
