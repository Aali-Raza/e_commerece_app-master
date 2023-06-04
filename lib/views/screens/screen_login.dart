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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        padding: const EdgeInsets.only(left: 40, right: 40),
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
            Text("Password"),
            MyTextField(
              text: 'Password',
              ShowHidePassward: true,
              controller: pasword_controller,
            ),
            SizedBox(height: 20,),
            CustomButton(
              text: 'Sign Up',
              onTap: () {
                Get.to(ScreenSignIn());
              },
            ),

            Row(
              children: [
                Expanded(
                  child: Divider(
                    height: 100,
                    thickness: 1,
                    indent: 40,
                    endIndent: 10,
                    color: Color(0xffD1D1D1),
                  ),
                ),
                Text("Or sign up with",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Colors.black,
                    )),
                Expanded(
                  child: Divider(
                    height: 100,
                    thickness: 1,
                    indent: 10,
                    endIndent: 40,
                    color: Color(0xffD1D1D1),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xffD5DDE0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.facebook,
                    size: 45,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 70,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xffD5DDE0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.g_mobiledata,
                    size: 45,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Align(
                alignment: Alignment.center,
                child: Text("Already have an account? Sign In")),
          ],
        ),
      ),
    );
  }
}
