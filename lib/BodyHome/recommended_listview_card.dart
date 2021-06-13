import 'package:flutter/material.dart';
import 'package:plant_sumith_project/BodyHome/recommend_plant_card.dart';
import 'package:plant_sumith_project/DetailsPage/details_home.dart';
import '../constrants.dart';

class RecommendedListViewCard extends StatelessWidget {
  const RecommendedListViewCard({
    Key? key,
    required this.imageList,
    required this.titleList,
    required this.priceList,
    required this.countryList,
  }) : super(key: key);

  final List<String> imageList;
  final List<String> titleList;
  final List<int> priceList;
  final List<String> countryList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: imageList.length,
        itemBuilder: (BuildContext context, int index) => RecommendPlantCard(
          image: imageList[index],
          title: titleList[index],
          price: priceList[index],
          country: countryList[index],
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
