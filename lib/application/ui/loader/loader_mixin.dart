import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin LoaderMixin on GetxController {
  void loaderListener(RxBool loaderRx) {
    ever<bool>(loaderRx, (loading) async {
      if (loading) {
        await Get.dialog(
          const Center(
            child: CircularProgressIndicator(),
          ),
          // se não carregar não tem acesso aos botões
          barrierDismissible: false,
        );
      } else {
        Get.back();
      }
    });
  }
}
