import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:plant_sumith_project/home_screen.dart';

import '../constrants.dart';
import 'package:http/http.dart' as http;

class LoginFormDatas extends StatefulWidget {
  const LoginFormDatas({Key? key}) : super(key: key);

  @override
  _LoginFormDatasState createState() => _LoginFormDatasState();
}

class _LoginFormDatasState extends State<LoginFormDatas> {
  final _emailValidator = TextEditingController();
  final _passwordValidator = TextEditingController();

  Future<String?> attemptLogIn(String username, String password) async {
    var res = await http
        .post(Uri.parse('http://192.168.1.102:3000/api/v1/logging'), body: {"name": username, "password": password});
    if (res.statusCode == 200) return res.body;
    return null;
  }

  void displayDialog(context, title, text) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(title),
          content: Text(text),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
          ],
        ),
      );
  bool _showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 1.5,
          vertical: kDefaultPadding * 1,
        ),
        child: Column(
          children: [
            TextFormField(
              controller: _emailValidator,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: kPrimaryColor,
                    width: 2,
                  ),
                ),
                labelText: "Email",
                labelStyle: TextStyle(
                  color: kPrimaryColor,
                ),
                hintText: "Enter a valid email ",
              ),
              validator: MultiValidator(
                [
                  RequiredValidator(errorText: "* Required"),
                  EmailValidator(errorText: "* Enter valid Email"),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _passwordValidator,
              obscureText: !_showPassword,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                  child: Icon(
                    _showPassword ? Icons.visibility : Icons.visibility_off,
                    color: kPrimaryColor,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: kPrimaryColor,
                    width: 2,
                  ),
                ),
                labelText: "Password",
                labelStyle: const TextStyle(
                  color: kPrimaryColor,
                ),
                hintText: "Enter the Password",
              ),
              validator: MultiValidator([
                RequiredValidator(errorText: "* Required"),
                MinLengthValidator(6, errorText: "Password should be atleast 6 characters"),
                MaxLengthValidator(15, errorText: "Password should not be greater than 15 characters"),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: kDefaultPadding,
                bottom: kDefaultPadding,
              ),
              child: ElevatedButton(
                onPressed: () async {
                  if (_emailValidator.text.isNotEmpty && _passwordValidator.text.isNotEmpty) {
                    print("hai");
                    var responseLogin = await attemptLogIn(_emailValidator.text, _passwordValidator.text);

                    if (responseLogin != null) {
                      var st = json.decode(responseLogin);
                      // print(st['name']);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => new Homescreen(st['name'].toString()),
                        ),
                      );
                    } else {
                      print("Error data val");
                      displayDialog(context, "Invalid Login Request", 'Recheck the input credientials ');
                    }
                  } else {
                    print("Invalid\n");
                    displayDialog(context, "Invalid Login Request", 'Null have detected!.');
                  }
                },
                style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => kPrimaryColor)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 3,
                    vertical: kDefaultPadding / 1.5,
                  ),
                  child: Text(
                    "Log In",
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    print("Working progress Create new");
                  },
                  child: Text(
                    "Create new",
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: kPrimaryColor,
                        ),
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    print("Working progress forgot password");
                  },
                  child: Text(
                    "Forgot password ?",
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: kPrimaryColor,
                        ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
