import 'package:flutter/material.dart';
import 'package:plant_sumith_project/LoginAndRegister/login_body1.dart';

class LoginScreenData extends StatefulWidget {
  const LoginScreenData({Key? key}) : super(key: key);

  @override
  _LoginScreenDataState createState() => _LoginScreenDataState();
}

class _LoginScreenDataState extends State<LoginScreenData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: LoginBodyData(),
    );
  }
}
