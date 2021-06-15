import 'package:flutter/material.dart';

import 'package:plant_sumith_project/LoginAndRegister/login_screen1.dart';
import 'package:plant_sumith_project/constrants.dart';
import 'package:plant_sumith_project/home_screen.dart';
// import 'package:plant_sumith_project/sampleWork/sample.dart';
// import 'package:plant_sumith_project/sampleWork/sample_1.dart';

void main() {
  runApp(const MyApp());
}

const SERVER_URL = '117.193.37.61';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plants',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: kTextColor,
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: PeriodicRequester(),
      home: LoginScreenData(),
      // home: Homescreen(),
    );
  }
}
