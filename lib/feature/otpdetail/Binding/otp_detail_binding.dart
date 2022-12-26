import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../../../core/repository/signup/signup_repo_impl.dart';
import '../Controller/otp_detail_controller.dart';


class OtpDetailBinding extends Bindings{
  @override
  void dependencies() {
    // Get.lazyPut(()=>Navfirstcontroller());
    Get.lazyPut(()=>SignupRepoImpl());
    Get.put(OtpDetailController());

  }

}