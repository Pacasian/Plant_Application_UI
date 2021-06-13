import 'package:flutter/material.dart';
import 'package:plant_sumith_project/constrants.dart';

class RecommendedAndMore extends StatelessWidget {
  const RecommendedAndMore({
    Key? key,
    required this.recommend,
    required this.more,
    required this.moreFunc,
  }) : super(key: key);
  final String recommend, more;
  final VoidCallback moreFunc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Container(
            height: 24,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding / 4),
                  child: Text(
                    recommend == "" ? "Recommended" : recommend,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 7,
                    margin: const EdgeInsets.only(right: kDefaultPadding / 4),
                    color: kPrimaryColor.withOpacity(0.2),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            onPressed: moreFunc,
            child: Text(
              more == "" ? "More" : more,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
