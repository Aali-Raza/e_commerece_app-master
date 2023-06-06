import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => openWhatsAppChat('+923482801314'),
              child: Text('Open WhatsApp Chat'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => makePhoneCall('+923482801314'),
              child: Text('Make Phone Call'),
            ),
          ],
        ),
      ),
    );
  }

  void openWhatsAppChat(String phoneNumber) async {
    String whatsappUrl = 'https://wa.me/$phoneNumber';
    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }

  void makePhoneCall(String phoneNumber) async {
    String telUrl = 'tel:$phoneNumber';
    if (await canLaunch(telUrl)) {
      await launch(telUrl);
    } else {
      throw 'Could not launch $telUrl';
    }
  }
}
