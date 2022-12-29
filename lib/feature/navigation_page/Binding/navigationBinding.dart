import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:shivam_kushwah_final/core/repository/signup/signup_repo_impl.dart';
import 'package:shivam_kushwah_final/feature/navfirstpage/controller/navfirstcontroller.dart';
import 'package:shivam_kushwah_final/feature/navigation_page/controller/navigationcontroller.dart';
import 'package:shivam_kushwah_final/feature/navthirdpage/controller/navthird_controller.dart';

class NavigationBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>NavthirdController());
    Get.put(NavigationController());
    Get.put(SignupRepoImpl());
    Get.put(Navfirstcontroller());

  }

}