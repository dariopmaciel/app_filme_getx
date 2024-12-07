import 'package:app_filme_getx/application/modules/module.dart';
import 'package:app_filme_getx/modules/splash/splash_bindings.dart';
import 'package:app_filme_getx/modules/splash/splash_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class SplashModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => const SplashPage(),
      //antes de carregar a pagina sera executado este metodo que esta no bindings
      binding: SplashBindings(),
    ),
  ];
}
