import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenAppCreataccount extends StatefulWidget {
  @override
  _ScreenAppCreataccountState createState() => _ScreenAppCreataccountState();
}

class _ScreenAppCreataccountState extends State<ScreenAppCreataccount> {
  // PhoneController phoneController = Get.find<PhoneController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          "Create Account",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: Obx(() {
        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 37),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage("assets/images/login2.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.withOpacity(.2),
                ),
                width: MediaQuery.of(context).size.width * .8,
                height: 45,
                // padding: EdgeInsets.only(left: 10, bottom: 2),
                child: TextField(
                  // controller: phoneController.nameController.value,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10, bottom: 5),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: "User Name",
                      border: InputBorder.none,
                      suffixStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.withOpacity(.2),
                ),
                width: MediaQuery.of(context).size.width * .8,
                height: 45,
                // padding: EdgeInsets.only(left: 10, bottom: 2),
                child: TextField(
                  // controller: phoneController.emailController.value,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10, bottom: 5),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: "Email",
                      border: InputBorder.none,
                      suffixStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.withOpacity(.2),
                ),
                width: MediaQuery.of(context).size.width * .8,
                height: 45,
                // padding: EdgeInsets.only(left: 10, bottom: 2),
                child: TextField(
                  // controller: phoneController.genderController.value,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10, bottom: 5),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: "Email",
                      border: InputBorder.none,
                      suffixStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.withOpacity(.2),
                ),
                width: MediaQuery.of(context).size.width * .8,
                height: 45,
                // padding: EdgeInsets.only(left: 10, bottom: 2),
                child: TextField(
                  // controller: phoneController.passwordController.value,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10, bottom: 5),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: "Password",
                      border: InputBorder.none,
                      suffixStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(onTap: () async {
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                  // initialDatePickerMode: DatePickerMode.year,
                );
                //   setState(() {
                //     if (picked != null && picked != phoneController.selectedDate.value) {
                //       phoneController.selectedDate.value = picked;
                //     }
                //   });
                // },
                // child: Container(
                // width: MediaQuery
                //     .of(context)
                //     .size
                //     .width * .8,
                // height: 45,
                // padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                // decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(12),
                // color: Colors.grey.withOpacity(.2),
                // ),
                // child: Text(
                // "${phoneController.selectedDate.value.year}/${phoneController.selectedDate.value.month}/${phoneController.selectedDate.value
                //     .day}"),
                // ),
                // ),
                SizedBox(
                  height: 210,
                );
                ElevatedButton(
                  onPressed: () async {
                    // String userName=phoneController.nameController.value.text;
                    // String email=phoneController.emailController.value.text;
                    // String password=phoneController.passwordController.value.text;
                    // String gender=phoneController.genderController.value.text;
                    // await userRef.doc(uid).update({
                    // "username":userName,
                    // "email":email,
                    // "gender":gender,
                    // "password":password,
                    // "dob":phoneController.selectedDate.value.millisecondsSinceEpoch
                    // }).then((value) {
                    // Get.to(ScreenAppAllowLocation());
                    // });
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (BuildContext context) {
                    //   return ScreenAppAllowLocation();
                    // }));
                  },
                  child: Text('Finish'),
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black,
                      backgroundColor: Colors.black,
                      fixedSize: Size(257, 43),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                );
              })
            ],
          ),
        );
      }),
    );
  }
}
