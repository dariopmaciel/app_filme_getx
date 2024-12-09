import 'package:app_filme_getx/modules/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
//instancia e ja deixa disponivel    
    // Get.put(LoginController());
//instancia somente quando necessário
    Get.lazyPut(() => LoginController());
  }
}
