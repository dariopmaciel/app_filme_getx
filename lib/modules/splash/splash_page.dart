// import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:app_filme_getx/modules/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  var controller = Get.find<SplashController>();
  SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    //! Para criações a serem criadas depois que meu build for construido
    WidgetsBinding.instance.addPostFrameCallback(
      //!ESTA CONSTRUÇÃO
      (timeStamp) {},
    );
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: Text(FirebaseRemoteConfig.instance.getString("api_token")),
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover),
          ),
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}
