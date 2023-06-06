import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
String uid = FirebaseAuth.instance.currentUser!.uid;
var userRef = FirebaseFirestore.instance.collection("users");
// Future<File> getVideoThumbnail(String url) async {
//   var thumbTempPath = await VideoThumbnail.thumbnailFile(
//     video: url,
//     thumbnailPath: (await getTemporaryDirectory()).path,
//     imageFormat: ImageFormat.JPEG,
//     maxHeight: 1000,
//     // specify the height of the thumbnail, let the width auto-scaled to keep the source aspect ratio
//     quality: 100, // you can change the thumbnail quality here
//   );
//   return File(thumbTempPath!);
// }
