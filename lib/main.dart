import 'package:app_filme_getx/modules/splash/splash_module.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // final remoteConfig = FirebaseRemoteConfig.instance;
  // remoteConfig.fetchAndActivate();
  //!ou
  FirebaseRemoteConfig.instance.fetchAndActivate();
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
