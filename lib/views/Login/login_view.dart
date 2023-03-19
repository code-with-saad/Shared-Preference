import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../controllers/login_controller/login_controller.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller.emailController,
              ),
              TextField(
                controller: controller.passwordController,
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.login();
                  },
                  child: Text("Login")),
              SizedBox(
                height: 20,
              ),
                GetBuilder(
                  init: controller,
                  builder: (context) {
                    return Column(
                      children: [
                        Text(controller.email),
                        Text(controller.password),
                      ],
                    );
                  }),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.getvalue();
                  },
                  child: Text("Get Values")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.removedata();
                  },
                  child: Text("Remove Values")),
            ],
          ),
        ),
      ),
    );
  }
}
