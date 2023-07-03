import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../Custom_UI/my_elevated_buton.dart';

class ContactScreen extends StatefulWidget {
  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {


  final Uri _url = Uri.parse(
      "whatsapp://send?phone= +923416421565 + &text=Hello!\n i want emergency fuel ");

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri urlPhone = Uri.parse('tel://+923416421565');
    Future<void> makePhoneCall(Uri url) async {
      if (await launchUrl(url)) {
        await launchUrl(url);
      }
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff0B3385),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
        title: Text(
          "Contact Seller",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
SizedBox(height: 100,),
            Image.asset("assets/images/navsel.png",width: 400,),
            MyElevatedButton(
              onpress: () async {
                await _launchUrl();
              },
              text: 'Contact Seller',
              color: Colors.white,
              backgroundcolor: Color(0xff0B3385),
            ),
            SizedBox(
              height: 30,
            ),
            MyElevatedButton(
              onpress: () async {
                await  makePhoneCall(urlPhone);
              },
              text: 'Call Seller',
              color: Colors.white,
              backgroundcolor: Color(0xff0B3385),
            ),
          ],
        ),
      ),
    );
  }
}
