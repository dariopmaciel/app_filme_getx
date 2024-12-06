// import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:app_filme_getx/modules/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  //*Aqui eu delego o controlle a classe. E busca uma instância já registrada previamente no GetX,
  //*ele não criará uma nova instância, apenas reutilizará a existente.
  var controller = Get.put<SplashController>(SplashController());

  //*Aqui eu crio uma nova instancio da classe
  //*Cada vez que essa linha é executada, uma nova instância será criada, sem qualquer gerenciamento adicional.
  // var controller = SplashController();

  SplashPage({super.key});

  @override

  // void initState() {
  //   //! Para criações a serem criadas depois que o 'init' e o 'build' foi construido (addPostFrameCallback)
  //   WidgetsBinding.instance.addPostFrameCallback(
  //     //!ESTA CONSTRUÇÃO
  //     (timeStamp) {},
  // );
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }

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
