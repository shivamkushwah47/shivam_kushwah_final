import 'dart:async';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shivam_kushwah_final/core/routes.dart';

class SplashController extends GetxController {
  final getStorage = GetStorage();

  @override
  void onInit() {
    Timer(Duration(seconds: 2), () {
      Get.offAllNamed(Routes.intro);
    });
    super.onInit();
  }

}
