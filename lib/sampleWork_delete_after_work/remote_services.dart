// import 'package:http/http.dart' as http;
// import 'package:plant_sumith_project/sampleWork/model_class.dart';
//
// class RemoteServices {
//   static var client = http.Client();
//   static Future<List<RecommendPlant>?> fetchData() async {
//     var response = await client.get(Uri.parse('http://192.168.1.102:3000/api/v1/recommendplants'));
//     if (response.statusCode == 200) {
//       var jsonString = response.body;
//       return recommendPlantFromJson(jsonString);
//     } else {
//       return null;
//     }
//   }
// }
