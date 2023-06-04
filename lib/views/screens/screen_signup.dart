import 'package:custom_utils/custom_utils.dart';
import 'package:e_commerece_app/views/screens/screen_forgotPasword.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenSignIn extends StatelessWidget {
  bool hiden = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xff343148FF),
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
            "Sign in",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(textAlign: TextAlign.center,
                    "Please fill E-mail & password to login your"
                        "\nShopy application account.",
                    style: TextStyle(
                        color: Color(0xff3E4958),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("E-mail"),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    height: 40.sp,
                    width: 200.sp,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border:
                        Border.all(color: Colors.blueGrey.withOpacity(.2)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(.1),
                          )
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "example@gmail.com",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Password"),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    height: 7.sp,
                    width: 80.sp,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border:
                        Border.all(color: Colors.blueGrey.withOpacity(.2)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(.1),
                          )
                        ]),
                    child: TextField(
                      obscureText: hiden,
                      decoration: InputDecoration(
                          hintText: "Enter your password",
                          border: InputBorder.none,
                          suffixIcon: GestureDetector(
                              onTap: () {
                                // setState(() {
                                //   hiden = !hiden;
                                // });
                              },
                              child: Icon(hiden
                                  ? Icons.visibility
                                  : Icons.visibility_off))),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: CustomButton(
                      text: 'Sign In',
                      onPressed: () {  },
                    ),
                  ),
                  GestureDetector(

                      onTap: (){
                        Get.to(ForgotPasword());
                      },child: Text("Forgot password?")),
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
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text("Already have an account? Sign Un")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

