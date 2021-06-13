import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
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
                height: 80,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(62),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width / 2,
                height: 80,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Add to Cart",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
