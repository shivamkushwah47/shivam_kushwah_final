import 'package:get/get.dart';
import 'package:shivam_kushwah_final/feature/navthirdpage/controller/navthird_controller.dart';



class NavthirdBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(()=>NavthirdController());
    Get.put(NavthirdController());


  }

}