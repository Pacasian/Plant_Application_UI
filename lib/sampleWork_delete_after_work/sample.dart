import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_sumith_project/constrants.dart';
import 'package:plant_sumith_project/Model/model_class.dart';
import 'package:plant_sumith_project/sampleWork_delete_after_work/model_controller.dart';
import 'package:plant_sumith_project/sampleWork_delete_after_work/traditional_controller.dart';

class SampleCas extends StatefulWidget {
  const SampleCas({Key? key}) : super(key: key);

  @override
  _SampleCasState createState() => _SampleCasState();
}

class _SampleCasState extends State<SampleCas> {
  late final RecommendPlant recommendPlant;
  late Future<List<RecommendPlant>> futureRecomPlant;
  // List<RecommendPlant> incomingList = sampleCasController.sampleList;

  @override
  void initState() {
    super.initState();
    futureRecomPlant = fetchPlantData();
  }

  @override
  Widget build(BuildContext context) {
    // final SampleCasController sampleCasController = Get.put(SampleCasController());
    // sampleCasController.fetchData();
    // print(sampleCasController.sampleList.length);
    return Scaffold(
      body: Container(
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: FutureBuilder<List<RecommendPlant>>(
              future: futureRecomPlant,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  // return Text(snapshot.data![].title);
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
// color: Colors.red,
                          child: ListTile(
                            title: Text(snapshot.data![index].title.toUpperCase()),
                            subtitle: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(snapshot.data![index].country.toUpperCase()),
                                Text(
                                  '\$${snapshot.data![index].price}',
                                  style: Theme.of(context).textTheme.button,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: snapshot.data!.length,
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }

                // By default, show a loading spinner.
                return CircularProgressIndicator();
              },
            )),
      ),
    );
  }
}

//
// Obx(() {
// if (sampleCasController.isLoading.value) {
// return const Center(
// child: CircularProgressIndicator(
// color: kPrimaryColor,
// ),
// );
// } else {
// return ListView.builder(
// itemCount: sampleCasController.sampleList.length,
// itemBuilder: (context, index) => Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// height: 60,
// // color: Colors.red,
// child: ListTile(
// title: Text(sampleCasController.sampleList[index].title.toUpperCase()),
// subtitle: Column(
// mainAxisSize: MainAxisSize.min,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(sampleCasController.sampleList[index].country.toUpperCase()),
// Text(
// '\$${sampleCasController.sampleList[index].price}',
// style: Theme.of(context).textTheme.button,
// ),
// ],
// ),
// ),
// ),
// ),
// );
// }
// }),
