import 'package:flutter/material.dart';
import 'package:plant_sumith_project/BodyHome/recommend_plant_card.dart';
import 'package:plant_sumith_project/DetailsPage/details_home.dart';
import 'package:plant_sumith_project/Model/model_class.dart';
import '../constrants.dart';

class RecommendedListViewCard extends StatelessWidget {
  const RecommendedListViewCard({
    Key? key,
    required this.resVal,
    // required this.imageList,
    // required this.titleList,
    // required this.priceList,
    // required this.countryList,
  }) : super(key: key);
  final List<RecommendPlant>? resVal;
  // final List<String> imageList;
  // final List<String> titleList;
  // final List<int> priceList;
  // final List<String> countryList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: resVal!.length,
        itemBuilder: (BuildContext context, int index) => RecommendPlantCard(
          image: resVal![index].image,
          title: resVal![index].title,
          price: resVal![index].price,
          country: resVal![index].country,
          press: () {
            // ignore: avoid_print
            print("Working\nMoving to Details Page with Index $index");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
