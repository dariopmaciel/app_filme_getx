import 'package:app_filme_getx/modules/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashBindings implements Bindings {
  @override
  void dependencies() {
    //carrega na memoria direto
    Get.put(SplashController());
    // carrega somente quando necessario
    // Get.lazyPut(()=>SplashController());
  }
}