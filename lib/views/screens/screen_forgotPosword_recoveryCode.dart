import 'package:e_commerece_app/views/screens/screen_forgotPasword.dart';
import 'package:e_commerece_app/views/screens/screen_recoveryCode_paswordResend_successfully.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

import '../../Custom_UI/custom_button.dart';

class ScreenAppRecoverycode extends StatefulWidget {
  @override
  _ScreenAppRecoverycodeState createState() => _ScreenAppRecoverycodeState();
}

class _ScreenAppRecoverycodeState extends State<ScreenAppRecoverycode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Recovery code",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 25,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 50, left: 50),
        child: Column(
          children: [
            Text(textAlign: TextAlign.center,
              "The recovery code was sent to your\n mobile. Code expiration time is 120s.\n Please enter the code:",
              style: TextStyle(),
            ),
            SizedBox(
              height: 30,
            ),
            PinCodeTextField(
              pinBoxOuterPadding: EdgeInsets.all(9),
              keyboardType: TextInputType.phone,
              // pinBoxDecoration: BoxDecoration(),
              autofocus: true,
              maxLength: 4,
              pinBoxRadius: 10,
              highlight: true,
              pinBoxColor: Colors.grey.withOpacity(.2),
              onDone: (text) {},
              pinBoxBorderWidth: .7,
              pinBoxHeight: 50,
              pinBoxWidth: 50,
              defaultBorderColor: Colors.grey,
            ),
            Spacer(),
            CustomButton(
              text: 'Send Again',
              onTap: () {
                Get.to(ScreenPaswordScussfully());
              },
            ),
          ],
        ),
      ),
    );
  }
}