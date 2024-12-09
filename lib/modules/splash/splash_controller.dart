import 'package:get/get.dart';

class SplashController extends GetxController {
//Para antes de carregar a tela
  // @override
  // void onInit() {
  //   print('onInit antes de carregar a tela');
  //   super.onInit();
  // }

  //Carerga depois que o build foi contruido
  @override
  void onReady() {
    // print('onReady para depois que o build é carregado na tela');
    // depois de carregado, se passou no teste , faz tal coisa, se não faz outra
    super.onReady();
    Get.offAllNamed('/login'); // remove toda a pilha e vá para '/login'
    
  }

  //Para quando se starta a aplicação
  // @override
  // InternalFinalCallback<void> get onStart => super.onStart;

  // //para quando se deleta da caixa de instancias "dispose"
  // @override
  // InternalFinalCallback<void> get onDelete => super.onDelete;

  // //Quando a pagina foi fechada
  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
