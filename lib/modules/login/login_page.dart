import 'package:app_filme_getx/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends GetView<LoginController> {
  //ou assim e add a controller
// class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          AnimationExample(),
        ],
      ),
    );
  }
}

class AnimationExample extends StatefulWidget {
  const AnimationExample({super.key});
  @override
  State<AnimationExample> createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State<AnimationExample> {
  final controller = Get.put(LoginController());
  bool _isMoved = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 800), () {
      setState(() {
        _isMoved = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/background.png',
              width: Get.width, height: Get.height, fit: BoxFit.cover),
          Container(
            color: Colors.black45,
            width: Get.width,
            height: Get.height,
          ),
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            left: 0,
            right: 0,
            top: _isMoved ? Get.height * 0.1 : (Get.height) / 2.5,
            child: Center(
              child: Column(
                children: [
                  Image.asset('assets/images/logo.png'),
                  const SizedBox(height: 50),
                  SizedBox(
                    width: Get.width * 0.9,
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
                  // Obx(
                  //   () {
                  //     return Text(
                  //       //!AQUI
                  //       controller.name.value,
                  //       style: const TextStyle(
                  //         fontSize: 14,
                  //         color: Colors.white,
                  //       ),
                  //     );
                  //   },
                  // ),
                  const SizedBox(height: 400),
                  const Text(
                    'Este app foi criado por: DARIO P MACIEL',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
