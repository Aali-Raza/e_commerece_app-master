import 'package:custom_utils/custom_utils.dart';
import 'package:e_commerece_app_master/views/screens/screen_app_map.dart';
import 'package:e_commerece_app_master/views/screens/screen_signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Custom_UI/my_elevated_buton.dart';
import '../../Custom_UI/my_textfield.dart';
import '../../controllers/my_controllers.dart';

class screenLogIn extends StatefulWidget {
  @override
  State<screenLogIn> createState() => _screenLogInState();
}

class _screenLogInState extends State<screenLogIn> {
  MyController userController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color(0xff0B3385),
          elevation: 0,
          leading: IconButton(icon:
          Icon(Icons.arrow_back_ios_new),
            color: Colors.white, onPressed: () { Get.back(); },
          ),
          title: Text(
            "Sign Up",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(15.sp),
                padding: EdgeInsets.symmetric(
                  horizontal: 5.sp,
                ),
                width: MediaQuery.of(context).size.width * .9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.sp),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text("Name"),
                    MyTextField(
                      text: 'name',
                      ShowHidePassward: false,
                      controller: userController.name_controller.value,
                    ),
                    Text("E-mail"),
                    MyTextField(
                      text: 'E-mail',
                      ShowHidePassward: false,
                      controller: userController.email_controller.value,
                    ),
                    Text("phone"),
                    MyTextField(
                      text: 'phone',
                      isNumberFeild: true,
                      ShowHidePassward: true,
                      controller: userController.phone_controller.value,
                    ),
                    Text("Password"),
                    MyTextField(
                      text: 'Password',
                      ShowHidePassward: true,
                      controller: userController.password_controller.value,
                    ),
                    Text("confirm password"),
                    MyTextField(
                      text: 'confirm password',
                      ShowHidePassward: true,
                      controller:
                          userController.confirm_password_controller.value,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              MyElevatedButton(
                text: 'Sign In',
                onpress: () async {
                  var response = await userController.signUp();
                  if (response == "done") {
                    Get.snackbar(
                        "Success", "Welcom To Emergency Fule Supply ");
                    Get.offAll(ScreenAppMap());
                    userController.password_controller.value.clear();
                    userController.email_controller.value.clear();
                    userController.update();
                  } else {
                    Get.snackbar("Alert", response.toString());
                    userController.update();
                  }
                },
                color: Colors.white,
                backgroundcolor: Color(0xff0B3385),
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
                          color: Color(0xff0B3385),
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
