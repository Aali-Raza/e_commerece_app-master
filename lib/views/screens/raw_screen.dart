import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RewScreen extends StatelessWidget {

  final String phoneNumber;

  RewScreen({required this.phoneNumber});

  void _launchWhatsApp() async {
    final url = "https://api.whatsapp.com/send?phone=$phoneNumber";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  Future<void> makePhoneCall() async {
    String phoneNumber = '1234567890'; // Replace with the desired phone number
    String url = 'tel:$phoneNumber';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }

    // You can also return a value here if needed
    // return someValue;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fuel Supply App'),
      ),
      body: Center(
        child: TextButton(
          onPressed: _launchWhatsApp,
          child: Text('Chat on WhatsApp'),
        ),
      ),
    );
  }
}