import 'package:e_commerece_app/views/screens/screen_animated_floating_action_buton.dart';
import 'package:e_commerece_app/views/screens/screen_login.dart';
import 'package:e_commerece_app/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Sizer',
            theme: ThemeData.light(),
            home:SplashScreen(),
             // home: screenLogIn(),
            // ScreenAnimatedFloatingActionButon(),
          );
        });
  }
}
