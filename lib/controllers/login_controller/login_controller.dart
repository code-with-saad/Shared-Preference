import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var email = "";
  var password = "";
  login() async {
    final pref = await SharedPreferences.getInstance();
    pref.setString("email", emailController.text);
    pref.setString("password", passwordController.text);
    email = emailController.text;
    update();
    password = passwordController.text;
    update();
    // print(emailController.text);
    // print(passwordController.text);
  }

  getvalue() async {
    final pref = await SharedPreferences.getInstance();
    pref.getString("email");
    pref.getString("password");
    print(emailController.text);
    print(passwordController.text);
    // update();
  }

  removedata() async {
    final pref = await SharedPreferences.getInstance();
    pref.remove("email");
    pref.remove("password");
    email = '';
    print("Removed ${email}");
    update();
    password = '';
    print("Removed ${password}");
    update();
    // email = emailController.text;
    // password = passwordController.text;
  }
}
