import 'package:flutter/material.dart';
import 'package:plant_sumith_project/LoginAndRegister/login_form_data1.dart';

import '../constrants.dart';

class LoginBodyData extends StatefulWidget {
  const LoginBodyData({Key? key}) : super(key: key);

  @override
  _LoginBodyDataState createState() => _LoginBodyDataState();
}

class _LoginBodyDataState extends State<LoginBodyData> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: size.height * 0.15,
            ),
            IconLoginPage(),
            LoginFormDatas(),
          ],
        ),
      ),
    );
  }
}

Widget IconLoginPage() {
  return Container(
    height: 64,
    width: 64,
    child: const Icon(
      Icons.spa_outlined,
      size: 36,
      color: kPrimaryColor,
    ),
    decoration: BoxDecoration(
        // color: Colors.red,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: kPrimaryColor,
          width: 4,
        ),
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.38),
            offset: const Offset(0, 0),
            blurRadius: 42,
          )
        ]),
  );
}
