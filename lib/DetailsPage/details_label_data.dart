import 'package:flutter/material.dart';
import '../constrants.dart';

class DetailsLabelData extends StatelessWidget {
  const DetailsLabelData({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);
  final String title, country;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${title}\n",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: "${country}\n",
                  style: const TextStyle(
                    color: kPrimaryColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            "\$${price}",
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
          )
        ],
      ),
    );
  }
}
