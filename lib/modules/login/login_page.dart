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
    bool _isMoved = false;
    return Scaffold(
      //  appBar: AppBar(title: const Text('Login page'),),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset('assets/images/background.png',
              width: Get.width, height: Get.height, fit: BoxFit.cover),
          Container(
            color: Colors.black45,
            width: Get.width,
            height: Get.height,
          ),
          // Column(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(top: 80),
          //       child: Image.asset('assets/images/logo.png'),
          //     ),
          //     const SizedBox(height: 50),
          //     SizedBox(
          //       width: Get.width * .9,
          //       height: 42,
          //       child: SignInButton(
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(100),
          //         ),
          //         Buttons.Google,
          //         text: "Entrar com o Google",
          //         onPressed: () => controller.login(),
          //       ),
          //     ),
          //     Obx(
          //       () {
          //         return Text(
          //           //  controller.name,
          //           controller.name.value,
          //           style: const TextStyle(
          //             fontSize: 20,
          //             color: Colors.white,
          //           ),
          //         );
          //       },
          //     )
          //   ],
          // ),
          // =======================================================
          const AnimationExample(),
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
  bool _isMoved = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isMoved = true;
      });
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            left: 0,
            right: 0,
            top: _isMoved ? Get.height *0.2 : (Get.height / 2),
            child: Center(
              // child: Image.asset('assets/images/logo.png'),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
