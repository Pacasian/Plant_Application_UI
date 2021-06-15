import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:plant_sumith_project/BodyHome/newtork_image_recommend_plant_card.dart';
import 'package:plant_sumith_project/constrants.dart';
import 'package:plant_sumith_project/Model/model_class.dart';
import 'package:plant_sumith_project/sampleWork_delete_after_work/traditional_controller.dart';

class PeriodicRequester extends StatelessWidget {
  Stream<List<RecommendPlant>> getRandomNumberFact() async* {
    yield* Stream.periodic(Duration(seconds: 1), (_) async {
      var response = await http.get(Uri.parse('http://192.168.1.102:3000/api/v1/recommendplants'));
      var jsonString = response.body;

      return recommendPlantFromJson(jsonString);
    }).asyncMap((event) async => await event);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<RecommendPlant>>(
          stream: getRandomNumberFact(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: NetworkImageRecommendPlant(
                          imgUrl: snapshot.data![index].image,
                        ),
                      ),
//                       child: ListTile(
//                         title: Text(snapshot.data![index].title.toUpperCase()),
//                         subtitle: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(snapshot.data![index].country.toUpperCase()),
//                             Text(
//                               '\$${snapshot.data![index].price}',
//                               style: Theme.of(context).textTheme.button,
//                             ),
//                           ],
//                         ),
//                         leading: Container(
//                           height: 80,
//                           width: 80,
//                           decoration: BoxDecoration(
//                             image: DecorationImage(image: NetworkImage(snapshot.data![index].image), fit: BoxFit.cover),
//                           ),
//                         ),
//                       ),
                    ),
                  );
                },
                itemCount: snapshot.data!.length,
              );
            } else {
              return const Center(
                  child: CircularProgressIndicator(
                color: kPrimaryColor,
              ));
            }
          }
          // snapshot.hasData ? Center(child: Text(snapshot.data!.body)) : CircularProgressIndicator(),
          ),
    );
  }
}
