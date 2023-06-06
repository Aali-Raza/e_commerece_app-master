import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import 'custom_image_container.dart';

class CustomFuleContainer extends StatelessWidget {
  String imageName;
  String tittle;
  String time;
  String price;
  Callback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 13, bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: .8.sp, spreadRadius: .7)
          ]),
      height: 120.sp,
      width: 270.sp,
      child: Row(
        children: <Widget>[
          CustomExrImage(
            name: imageName,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Text(
                tittle,
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade500),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Price        ",
                    style: TextStyle(),
                  ),
                  Text(
                    ":  $price + 20/litter ",
                    style: TextStyle(),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Delivery   ",
                    style: TextStyle(),
                  ),
                  Text(
                    ":  $time minutes ",
                    style: TextStyle(),
                  ),
                ],
              ),
              ElevatedButton(onPressed: onTap, child: Text("Order Now"))
            ],
          ),
        ],
      ),
    );
  }

  CustomFuleContainer(
      {required this.imageName,
      required this.tittle,
      required this.time,
      required this.onTap,
      required this.price});
}
