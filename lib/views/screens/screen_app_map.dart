import 'dart:async';
import 'package:e_commerece_app_master/views/screens/screen_app_home.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
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
                            bottom: 20,
                            left: 40,
                            right: 40,
                            child: ElevatedButton(
                              onPressed: () async {
                                print(stAdress);
                                print(lng); // Navigator.push(context,
                                print(lat);

                                await userRef.doc(uid).update({
                                  "location": stAdress,
                                  "lat": lat,
                                  "lng": lng,
                                }).then((value) {
                                  print(stAdress);
                                  print(lat);
                                  print(lng);
                                  Get.offAll(ScreenAppHome());
                                });
                              },
                              child: Text('Save'),
                              style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.black,
                                  backgroundColor: Color(0xff0B3385),
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
