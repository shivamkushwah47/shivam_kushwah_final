
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shivam_kushwah_final/feature/navfirstpage/view/navfirst.dart';
import 'package:shivam_kushwah_final/feature/navsecondpage/view/navsecond_view.dart';
import 'package:shivam_kushwah_final/feature/navthirdpage/view/navthird_view.dart';

import '../../navforthpage/view/navfourth_view.dart';


class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;

  var pages = [Navfirst(),NavSecond(),Navthird(),NavFourth()];

  onTapButton(index) {
    selectedIndex.value = index;
  }
}
