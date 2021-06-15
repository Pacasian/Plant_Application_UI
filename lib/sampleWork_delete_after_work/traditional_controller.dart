import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:plant_sumith_project/Model/model_class.dart';

Future<List<RecommendPlant>> fetchPlantData() async {
  var response = await http.get(Uri.parse('http://192.168.1.102:3000/api/v1/recommendplants'));
  print("dfdf${response.statusCode}");
  var jsonString = response.body;
  print(jsonString);
  return recommendPlantFromJson(jsonString);
  // try {
  //   if (response.statusCode == 200) {
  //     print("hello");
  //     var jsonString = response.body;
  //     print(jsonString);
  //     return recommendPlantFromJson(jsonString);
  //   }
  // } catch (err) {
  //   print(err);
  //   return null;
  // }
}
