import 'package:app_filme_getx/application/ui/loader/loader_mixin.dart';
import 'package:app_filme_getx/application/ui/messages/messages_mixin.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
// RxString name = RxString('Dario de Paula MAciel');
// String name = 'Dario de Paula MAciel';
// var name = "Efetue Login".obs;

  final loading = false.obs;
  final message = Rxn<MessageModel>();

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messagesListener(message);
  }

  Future<void> login() async {
    // name = 'Academia do Flutter';
    // name.value = 'Login efetuado com sucesso!';

    // loading.value = true;
    //ou assim
    loading(true);
    // await Future.delayed(const Duration(seconds: 2));
    //ou assim
    await 2.seconds.delay();
    // loading.value = false;
    loading(false);

    // Get.snackbar("Teste", "CARREGAMENTO");
    message(MessageModel.error(title: 'Titulo ERRO', message: 'ERRO'));
    await 1.seconds.delay();
    message(MessageModel.info(title: 'Titulo INFO', message: 'INFO'));
  }
}
