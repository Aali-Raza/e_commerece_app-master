import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/models.dart';
import '../views/screens/screen_app_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/screens/screen_app_map2.dart';

class MyController extends GetxController {
  Rx<TextEditingController> email_controller = TextEditingController().obs;
  Rx<TextEditingController> password_controller = TextEditingController().obs;
  Rx<TextEditingController> name_controller = TextEditingController().obs;
  Rx<TextEditingController> confirm_password_controller = TextEditingController().obs;
  Rx<TextEditingController> phone_controller = TextEditingController().obs;

  Future<String> signUp() async {
    String response = '';
    String email = email_controller.value.text.trim();
    String password = password_controller.value.text.trim();
    String name = name_controller.value.text.trim();
    String confirmPassword = confirm_password_controller.value.text.trim();
    String phone = phone_controller.value.text.trim();

    if (email.isEmpty || password.isEmpty|| confirmPassword.isEmpty) {
      return "No Field";
    }
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      var UserId = value.user!.uid;
      var user =UserModel(name: name, pasword: password,  phone: phone, location: '', lat: 0, lng: 0);
      FirebaseFirestore.instance
          .collection("users")
          .doc(UserId)
          .set(user.toMap())
          .then((value) {
        print("Database set and data in storing now");
      });

      value.user!.sendEmailVerification();
      response = "done";
      Get.back();
      print("verification sent to gmail");
    }).catchError((error) {
      response = error.toString();
      print(error.toString());
    });
    return response;
  }

  Future<String> LoginUser() async {
    String response = '';
    String email = email_controller.value.text.trim();
    String password = password_controller.value.text.trim();
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      if (value.user!.emailVerified) {
        Get.offAll(ScreenAppMap2());
      }
      response = "done";
      print("");
    }).catchError((error) {
      response = error.toString();
    });
    return response;
  }

  Future<String> ForgetPassword() async {
    String response = '';
    String email = email_controller.value.text.trim();
    // String password=password_controller.toString();
    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: email)
        .then((value) {
      response = "done";
    }).catchError((error) {
      response = error.toString();
    });
    return response;
  }

  Logout() async {
    await FirebaseAuth.instance.signOut().then((value) {
      Get.offAll(LoginUser());
    });
  }
}