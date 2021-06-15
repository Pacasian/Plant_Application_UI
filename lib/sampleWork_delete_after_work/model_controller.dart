// // import 'package:get/get_state_manager/';
// import 'package:get/state_manager.dart';
// import 'package:plant_sumith_project/sampleWork/model_class.dart';
// import 'package:plant_sumith_project/sampleWork/remote_services.dart';
//
// class SampleCasController extends GetxController {
//   var sampleList = <RecommendPlant>[].obs;
//   var isLoading = true.obs;
//
//   @override
//   void onInit() {
//     sampleList.stream.handleError((err) {
//       // ignore: argument_type_not_assignable_to_error_handler
//       fetchData();
//       print("--->${err}");
//     });
//
//     super.onInit();
//   }
//
//   Future<void> fetchData() async {
//     var samples = await RemoteServices.fetchData();
//     print("hello 1");
//
//     try {
//       isLoading(true);
//       await Future.delayed(const Duration(seconds: 2));
//       if (samples != null) {
//         sampleList.value = samples;
//         print("______");
//         print(sampleList);
//       }
//     } finally {
//       isLoading(false);
//     }
//   }
// }
