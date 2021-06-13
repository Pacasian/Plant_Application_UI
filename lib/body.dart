import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_sumith_project/BodyHome/bottom_plant_listview_card_and_heading.dart';
import 'package:plant_sumith_project/BodyHome/recommend_plant_card.dart';
import 'package:plant_sumith_project/BodyHome/recommend_with_more.dart';
import 'package:plant_sumith_project/BodyHome/recommended_listview_card.dart';
import 'package:plant_sumith_project/BodyHome/titile_home_healine_with_search.dart';
import 'package:plant_sumith_project/constrants.dart';

// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      "assets/images/image_1.png",
      "assets/images/image_2.png",
      "assets/images/image_3.png",
      "assets/images/image_1.png",
    ];
    List<int> priceList = [445, 540, 150, 50];
    List<String> titleList = ["Samantha", "angelica", "orsa", "orsa2"];
    List<String> countryList = [
      "russia",
      "russia",
      "u.s.a",
      "india",
    ];
    List<String> bottomImageList = [
      "assets/images/bottom_img_1.png",
      "assets/images/bottom_img_2.png",
      "assets/images/bottom_img_1.png",
    ];

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          // ignore: sized_box_for_whitespace
          HeadlineWithSearch(size: size),
          // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
          RecommendedAndMore(
            recommend: "Recommended",
            more: "More",
            // This function is not working now
            moreFunc: () {
              print("Hai");
            },
          ),
          RecommendedListViewCard(
              imageList: imageList, titleList: titleList, priceList: priceList, countryList: countryList),
          RecommendedAndMore(
            recommend: "Featured Plants",
            more: "More",
            // This function is not working now
            moreFunc: () {
              print("Hai");
            },
          ),
          BottomPlantSingleCard(
            imageList: bottomImageList,
            press: () {
              print("bottom image");
            },
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
