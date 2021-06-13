import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_sumith_project/BodyHome/titile_home_healine_with_search.dart';
import 'package:plant_sumith_project/constrants.dart';

// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        // ignore: sized_box_for_whitespace
        HeadlineWithSearch(size: size),
      ],
    );
  }
}
