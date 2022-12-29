import 'package:get/get.dart';
import 'package:shivam_kushwah_final/core/repository/loginpage/login_repo_impl.dart';
import 'package:shivam_kushwah_final/feature/login/controller/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(()=>LoginRepoImpl());
    Get.put(LoginController());
    Get.put(LoginRepoImpl());


  }

}