import 'package:flutter/material.dart';
import '../constrants.dart';

class BottomPlantSingleCard extends StatelessWidget {
  const BottomPlantSingleCard({
    Key? key,
    required this.imageList,
    required this.press,
  }) : super(key: key);

  final List<String> imageList;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 195,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => GestureDetector(
          onTap: press,
          child: Container(
            margin: const EdgeInsets.only(
              left: kDefaultPadding - 5.0,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding / 2,
              right: 5.0,
            ),
            height: 185,
            width: size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageList[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
