import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo_remote_config/data/dto/category_dto.dart';
import 'package:demo_remote_config/data/dto/tab_dto.dart';
import 'package:demo_remote_config/domain/entity/category_model.dart';
import 'package:demo_remote_config/domain/entity/tab_model.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class FirebaseRemoteConfigRepository {
  Future getDemo() async {
    final data = jsonDecode(FirebaseRemoteConfig.instance.getString('demo_1'));
    return data;
  }

  Future<List<TabModel>> getTabs() async {
    return (jsonDecode(FirebaseRemoteConfig.instance.getString('tab_home'))
            as List)
        .map((e) {
      return TabDto.fromJson(e as Map<String, dynamic>);
    }).toList();
  }

  Future<List<CategoryModel>> getCategories(String template) async {
    return (jsonDecode(FirebaseRemoteConfig.instance.getString(template))
            as List)
        .map((e) {
      return CategoryDto.fromJson(e as Map<String, dynamic>);
    }).toList();
  }

  Future<String> getColor(String ref) async {
    final data = await FirebaseFirestore.instance.doc(ref).get();
    return (data.data() ?? {})['color'];
  }


}
