import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:shivam_kushwah_final/feature/navigation_page/controller/navigationcontroller.dart';

class NavigationView extends GetView<NavigationController> {
  const NavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Obx(
          () => Scaffold(
            body: Center(
              child: controller.pages[controller.selectedIndex.value],
            ),
            bottomNavigationBar: InkWell(
              child: BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: "Home",
                        backgroundColor: Colors.green),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.document_scanner),
                        label: "Attaindance",
                        backgroundColor: Colors.greenAccent),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: "Profile",
                      backgroundColor: Colors.lightGreen,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: "Setting",
                      backgroundColor: Colors.lightGreenAccent,
                    ),
                  ],
                  currentIndex: controller.selectedIndex.value,
                  onTap: controller.onTapButton,
                  elevation: 5),
            ),
          ),
        ));
  }
}
