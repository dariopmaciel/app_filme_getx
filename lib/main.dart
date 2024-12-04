import 'package:app_filme_getx/modules/splash/splash_module.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        useMaterial3: false,
      ),
      getPages: [
        // GetPage(name: '/', page: () => Container()),
        ...SplashModule().routers,
      ],
    );
  }
}
