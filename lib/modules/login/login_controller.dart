import 'package:get/get.dart';

class LoginController extends GetxController {
RxString name = RxString('Dario de Paula MAciel');

// String name = 'Dario de Paula MAciel';

  void login() {
    // name = 'Academia do Flutter';
    name.value = 'Academia do Flutter';
  }
}
