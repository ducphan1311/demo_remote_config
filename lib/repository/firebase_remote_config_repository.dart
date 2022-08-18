// import 'dart:convert';
//
// import 'package:firebase_remote_config/firebase_remote_config.dart';
//
// class FirebaseRemoteConfigRepository {
//   Future<String> getDemo() async {
//     final data = jsonDecode(
//         FirebaseRemoteConfig.instance.getString('demo_1'));
//     return data['app_name'];
//   }
// }