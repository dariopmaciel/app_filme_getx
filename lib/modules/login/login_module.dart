import 'package:app_filme_getx/application/modules/module.dart';
import 'package:app_filme_getx/modules/login/login_page.dart';
import 'package:app_filme_getx/modules/splash/splash_bindings.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class LoginModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/login',
      page: () => const LoginPage(),
      binding: SplashBindings(), //antes de carregar a pagina sera executado este metodo que esta no bindings
    ),
  ];
}
