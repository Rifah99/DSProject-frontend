import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = '';
  String password = '';
  String authToken = '';

  final usernameTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  SharedPreferences? preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // create login page
      body: Column(
        children: [
          // add new entry button
          FormField(builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  TextFormField(
                    controller: usernameTextController,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                  TextFormField(
                    controller: passwordTextController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        login();
                      },
                      child: const Text('Login'),
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  Future<void> login() async {
    // get username and password from text fields
    username = usernameTextController.text;
    password = passwordTextController.text;

    if (username.isNotEmpty && password.isNotEmpty) {
      final response = await http.post(
        Uri.parse('http://localhost:8081/api/v1/authenticate'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Basic ${base64Encode(
            utf8.encode('$username:$password'),
          )}',
        },
        body: jsonEncode(<String, String>{
          'email': username,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        // get auth token from response
        authToken = response.body;
        // navigate to home page
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        }
      } else {
        // show error message
        return;
      }

      preferences = await SharedPreferences.getInstance();
      preferences?.setString('token', authToken);
      return;
    }
  }
}
