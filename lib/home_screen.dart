import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_sumith_project/body.dart';
import 'package:plant_sumith_project/constrants.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: const BottomNavHome(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/menu.svg"),
      ),
    );
  }
}

class BottomNavHome extends StatelessWidget {
  const BottomNavHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: kDefaultPadding * 2,
        left: kDefaultPadding * 2,
        bottom: kDefaultPadding / 4,
      ),
      height: 80,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: const Offset(0, -10),
          blurRadius: 35,
          color: kPrimaryColor.withOpacity(0.38),
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/flower.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),
          ),
        ],
      ),
    );
  }
}
