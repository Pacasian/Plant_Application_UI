import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_sumith_project/DetailsPage/details_label_data.dart';
import 'package:plant_sumith_project/DetailsPage/details_upper_image_data.dart';
import 'package:plant_sumith_project/constrants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          DetailsUpperImage(),
          DetailsLabelData(title: "Angelica", country: "Russia", price: 445),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Buy Now"),
                  style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: ))),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
