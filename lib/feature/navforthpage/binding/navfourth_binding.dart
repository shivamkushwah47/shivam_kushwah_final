import 'package:get/get.dart';

import '../controller/navfourth_controller.dart';

class GoogleLoginBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies\
    Get.put(NavFourthController());
  }

}