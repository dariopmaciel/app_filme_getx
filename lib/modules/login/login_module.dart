
import 'package:app_filme_getx/application/modules/module.dart';
import 'package:app_filme_getx/modules/login/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class LoginModule implements Module{
  @override
  List<GetPage> routers=[
    GetPage(name: '/login', page: () =>  const LoginPage(),),
  ];
  
}