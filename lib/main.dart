import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences_class/controllers/login_controller/login_controller.dart';

import 'controllers/login_controller/login_controller.dart';
import 'views/Login/login_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shared Prefernces Class',
      home: LoginView(),
    );
  }
}
