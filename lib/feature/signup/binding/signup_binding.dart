import 'package:get/get.dart';
import 'package:shivam_kushwah_final/feature/navfirstpage/controller/navfirstcontroller.dart';
import 'package:shivam_kushwah_final/feature/navsecondpage/controller/navsecond_controller.dart';
import 'package:shivam_kushwah_final/feature/navthirdpage/controller/navthird_controller.dart';
import 'package:shivam_kushwah_final/feature/signup/controller/signup_controller.dart';


class SignupBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(()=>NavthirdController());
    Get.lazyPut(()=>NavSecondController());
    Get.lazyPut(()=>Navfirstcontroller());
    Get.put(SignupController());


  }

}

