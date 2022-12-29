import 'package:get/get.dart';
import 'package:shivam_kushwah_final/feature/navthirdpage/controller/navthird_controller.dart';

import '../controller/navsecond_controller.dart';

class NavSecondBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(()=>NavSecondController());
    Get.put(NavSecondController());
    Get.put(NavthirdController());

  }

}