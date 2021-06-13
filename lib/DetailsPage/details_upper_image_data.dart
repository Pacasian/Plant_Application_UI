import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constrants.dart';

class DetailsUpperImage extends StatelessWidget {
  const DetailsUpperImage({
    Key? key,
    // required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            SizedBox(
              // color: Colors.red,
              width: size.width * 0.25,
              child: Container(
                // color: Colors.red,
                child: Row(
                  children: [
                    Expanded(
                        //Not necessary can take_off
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: kDefaultPadding * 2),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: SvgPicture.asset(
                                  "assets/icons/back_arrow.svg",
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          const IconDetailsShow(
                            icons: "assets/icons/sun.svg",
                          ),
                          const IconDetailsShow(
                            icons: "assets/icons/icon_2.svg",
                          ),
                          const IconDetailsShow(
                            icons: "assets/icons/icon_3.svg",
                          ),
                          const IconDetailsShow(
                            icons: "assets/icons/icon_4.svg",
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  )
                ],
                image: const DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IconDetailsShow extends StatelessWidget {
  const IconDetailsShow({
    Key? key,
    required this.icons,
  }) : super(key: key);
  final String icons;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 15),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(0.22),
          ),
          const BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          ),
        ],
      ),
      child: SvgPicture.asset(icons),
    );
  }
}
