// import 'package:e_commerece_app/views/layouts/layout_app_profile.dart';
// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
//
// import '../layouts/layout_app_history.dart';
// import '../layouts/layout_app_home.dart';
// import '../layouts/layout_user_chat.dart';
//
//
//
// class ScreenAppHome extends StatefulWidget {
//   @override
//   _ScreenAppHomeState createState() => _ScreenAppHomeState();
// }
//
// class _ScreenAppHomeState extends State<ScreenAppHome> {
//   var Screens=[
//     LayoutAppHome(),
//     LayoutAppProfile(),
//     LayoutAppHistory(),
//     LayoutUserChat()
//
//   ];
//   int _selectedIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             body:Screens[_selectedIndex],
//
//             bottomNavigationBar: Container(
//               decoration: BoxDecoration(
//                 color: Colors.red,
//                 boxShadow: [
//                   BoxShadow(
//                     blurRadius: 20,
//                     color: Colors.black.withOpacity(.1),
//                   )
//                 ],
//               ),
//               child: GNav(
//                 rippleColor: Colors.grey[300]!,
//                 hoverColor: Colors.yellow[100]!,
//                 gap: 0,
//                 activeColor: Colors.white,
//                 iconSize: 30,
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                 duration: Duration(milliseconds: 400),
//                 tabBackgroundColor: Colors.white,
//                 color: Colors.white,
//                 tabs: [
//                   GButton(
//                     icon: Icons.home,
//                     text: 'Home',iconActiveColor: Colors.red,textColor: Colors.red,
//                   ),
//                   GButton(
//                     icon: Icons.person,
//                     text: 'Profile',iconActiveColor: Colors.red,textColor: Colors.red,
//                   ),
//                   GButton(
//                     icon: Icons.work_history,
//                     text: 'History',iconActiveColor: Colors.red,textColor: Colors.red,
//                   ),
//                   GButton(
//                     icon: Icons.wechat_sharp,
//                     text: 'Chats',iconActiveColor: Colors.red,textColor: Colors.red,
//                   ),
//                 ],
//                 selectedIndex: _selectedIndex,
//                 onTabChange: (value){
//                   setState(() {
//                     _selectedIndex = value;
//                   });
//                 },
//               ),
//             )));
//   }
// }
import 'package:e_commerece_app_master/views/screens/screen_app_contact.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Custom_UI/custom_fule_container.dart';

class ScreenAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xff0B3385),
          title: Text('Fuel Screen'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomFuleContainer(
                imageName: 'pump1',
                tittle: 'Petrol distance less than 3km',
                time: '15',
                onTap: () {
                  Get.to(ContactScreen());
                },
                price: '270',
              ),
              CustomFuleContainer(
                imageName: 'pump2',
                tittle: 'Petrol distance less than 5km',
                time: '15',
                onTap: () {
                  Get.to(ContactScreen());
                },
                price: '400',
              ),
              CustomFuleContainer(
                imageName: 'pump1',
                tittle: 'Petrol distance less than 7km',
                time: '15',
                onTap: () {
                  Get.to(ContactScreen());
                },
                price: '270',
              ),
              CustomFuleContainer(
                imageName: 'pump1',
                tittle: 'Petrol distance less than 10km',
                time: '20',
                onTap: () {
                  Get.to(ContactScreen());
                },
                price: '310',
              ),
            ],
          ),
        ));
  }
}
