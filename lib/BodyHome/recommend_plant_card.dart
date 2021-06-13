import 'package:flutter/material.dart';
import '../constrants.dart';

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);
  final String image, title, country;
  final int price;
  // ignore: prefer_function_declarations_over_variables
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
        right: 5.0,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${title}\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: const TextStyle(
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$ ${price}",
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
