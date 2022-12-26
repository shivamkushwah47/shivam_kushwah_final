import 'package:get/get.dart';
import 'package:shivam_kushwah_final/feature/Introduction/controller/introduction_controller.dart';
import 'package:shivam_kushwah_final/feature/splash/controller/splash_controller.dart';


class SplashBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(SplashController());
    Get.put(IntroController());
  }
}
