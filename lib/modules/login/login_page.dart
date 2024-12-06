import 'package:app_filme_getx/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatelessWidget {
  final controller = Get.put(LoginController());

//ou extender GETVIEW, que ja tem uma controller
// class LoginPage extends GetView {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(title: const Text('Login page'),),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            'assets/images/background.png',
            width: Get.width,
            height: Get.height,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black45,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Image.asset('assets/images/logo.png'),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: Get.width * .9,
                height: 42,
                child: SignInButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  Buttons.Google,
                  text: "Entrar com o Google",
                  onPressed: () => controller.login(),
                ),
              ),
              Obx(
                () {
                  return Text(
                    //  controller.name,
                    controller.name.value,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  );
                },
              )
            ],
          ),
        ],
      ),
      //  Center(
      //   child: Container(
      //     width: Get.width,
      //     height: Get.height,
      //     decoration: const BoxDecoration(
      //       image: DecorationImage(
      //           image: AssetImage('assets/images/background.png'),
      //           fit: BoxFit.cover),
      //     ),
      //     child: Image.asset('assets/images/logo.png'),
      //   ),
      // ),
    );
  }
}
