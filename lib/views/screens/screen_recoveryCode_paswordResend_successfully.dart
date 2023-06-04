import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScreenPaswordScussfully extends StatefulWidget {
  @override
  State<ScreenPaswordScussfully> createState() =>
      _ScreenPaswordScussfullyState();
}

class _ScreenPaswordScussfullyState extends State<ScreenPaswordScussfully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/tickstars.png"),
            Text(textAlign: TextAlign.center,
              'Password reset\nsuccessful',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            ),
            Text(textAlign: TextAlign.center,
              'You have successfully reset your\npassword.Please use your new\npassword when logging in',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.blueGrey.withOpacity(.50)),
            ),
          ],
        ),
      ),
    );
  }
}
