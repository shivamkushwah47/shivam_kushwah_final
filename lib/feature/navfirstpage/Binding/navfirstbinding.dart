import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:shivam_kushwah_final/feature/navfirstpage/controller/navfirstcontroller.dart';

import '../../navthirdpage/controller/navthird_controller.dart';



class NavfirstBinding extends Bindings{
  @override
  void dependencies() {

    // Get.lazyPut(()=>Navfirstcontroller());
    Get.put(NavthirdController());

    Get.put(Navfirstcontroller());

  }

}