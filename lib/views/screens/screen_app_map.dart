import 'dart:async';
import 'package:e_commerece_app/views/screens/screen_app_home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_geocoder/geocoder.dart';
import 'package:flutter_geocoder/model.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

// import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../helpers/helper.dart';
import '../../helpers/location_utils.dart';

class ScreenAppMap extends StatefulWidget {
  @override
  _ScreenAppMapState createState() => _ScreenAppMapState();
}

class _ScreenAppMapState extends State<ScreenAppMap> {
  double lat = 30.9572817, lng = 70.9613174;
  String stAdress = '';
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
        body: SafeArea(
          child: FutureBuilder<bool>(
              future: checkPermissionStatus(),
              builder: (context, permissionSnapShot) {
                if (permissionSnapShot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                }
                if (permissionSnapShot.data == false) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Permission Requires"),
                        TextButton(
                            onPressed: () {
                              setState(() {});
                            },
                            child: Text("Retry"))
                      ],
                    ),
                  );
                }

                return FutureBuilder<String?>(
                    future: getAddressFromCurrentLocation(),
                    builder: (context, AddressSnapshot) {
                      if (AddressSnapshot.connectionState ==
                          ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator.adaptive(),
                        );
                      }
                      stAdress = AddressSnapshot.data.toString();

                      return FutureBuilder<Position>(
                          future: Geolocator.getCurrentPosition(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            lat = snapshot.data!.latitude;
                            lng = snapshot.data!.longitude;
                            return Stack(children: [
                              GoogleMap(
                                myLocationButtonEnabled: true,
                                initialCameraPosition: CameraPosition(
                                  target: LatLng(lat, lng),
                                  zoom: 14,
                                ),
                                mapType: MapType.normal,
                                zoomControlsEnabled: true,
                                zoomGesturesEnabled: true,
                                myLocationEnabled: true,
                                trafficEnabled: false,
                                rotateGesturesEnabled: true,
                                buildingsEnabled: true,
                                onMapCreated: (GoogleMapController controller) {
                                  _controller.complete(controller);
                                },
                              ),
                              Positioned(
                                top: 45,
                                left: 0,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        margin:
                                        EdgeInsets.symmetric(horizontal: 30),
                                        width:
                                        MediaQuery.of(context).size.width * .73,
                                        height: 43,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black.withOpacity(.4),
                                                blurRadius: 3,
                                                spreadRadius: .9,
                                                blurStyle: BlurStyle.outer)
                                          ],
                                          borderRadius: BorderRadius.circular(30),
                                          color: Colors.white,
                                        ),
                                        child: TextField(
                                          // controller: _controller1,

                                          decoration: InputDecoration(
                                            hintText: "search your location here",
                                            focusColor: Colors.white,
                                            floatingLabelBehavior:
                                            FloatingLabelBehavior.never,
                                            prefixIcon: Icon(Icons.map),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.search_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                left: 40,
                                right: 40,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    // print(stAdress);
                                    // print(lng); // Navigator.push(context,
                                    // print(lat);
                                    //
                                    // await userRef.doc(uid).update({
                                    //   "address": stAdress,
                                    //   "lat": lat,
                                    //   "lng": lng,
                                    // }).then((value) {
                                    //   print(stAdress);
                                    //   print(lat);
                                    //   print(lng);
                                      Get.offAll(ScreenAppHome());
                                    // });

                                    // Navigator.push(context,
                                    //     MaterialPageRoute(builder: (BuildContext context) {
                                    //   return ScreenAppHome();
                                    // }));
                                  },
                                  child: Text('Save'),
                                  style: ElevatedButton.styleFrom(
                                      shadowColor: Colors.black,
                                      backgroundColor: Colors.black,
                                       fixedSize: Size(257, 43),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20))),
                                ),
                              ),
                            ]);
                          });
                    });
              }),
        ));
  }
}
