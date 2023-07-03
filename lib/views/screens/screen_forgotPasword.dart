import 'package:e_commerece_app_master/views/screens/screen_signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../Custom_UI/my_elevated_buton.dart';
import '../../Custom_UI/my_textfield.dart';
import '../../controllers/my_controllers.dart';

class ForgetPasword extends StatelessWidget {
  MyController userController = Get.find<MyController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0B3385),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            color: Colors.white,
            onPressed: () {
              Get.back();
            },
          ),
          title: Text(
            "Forget Password",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Obx(() {
          return Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Forget password",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                ),
                MyTextField(
                  text: 'E-mail',
                  ShowHidePassward: false,
                  controller: userController.email_controller.value,
                ),
                SizedBox(
                  height: 30,
                ),
                MyElevatedButton(
                  text: "Submit",
                  onpress: () async {
                    var response = await userController.ForgetPassword();
                    if (response == "done") {
                      Get.snackbar("Success", "Password sent check email");
                      Get.to(ScreenSignIn());
                      // userController.update();
                    } else {
                      Get.snackbar("Alert", response.toString());
                      // userController.update();
                    }
                  },
                  color: Colors.white,
                  backgroundcolor: Color(0xff0B3385),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
