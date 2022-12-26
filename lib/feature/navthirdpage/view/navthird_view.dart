import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shivam_kushwah_final/feature/navthirdpage/controller/navthird_controller.dart';

class Navthird extends GetView<NavthirdController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("My Profile"),
        ),
        body: Obx(
          () => (Center(
            child: Container(
              height: Get.height,
              width: Get.width,
              child: Card(
                child: Column(

                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blueGrey,
                          radius: 60,
                        ),
                        Text(
                          controller.setName.value,
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 30,
                              color: Colors.black),
                        ),
                        Text(
                          controller.setEmail.value,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Edit",
                              style: TextStyle(color: Colors.green, fontSize: 25),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.green,
                                ))
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                              Text(controller.setName.value),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Email',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                              Text(controller.setEmail.value),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Phone',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                              Text(controller.setNum.value),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Password',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                              Text(controller.setPass.value),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Logout",
                          style: TextStyle(color: Colors.red, fontSize: 25),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.logout,
                              color: Colors.red,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
        ));
  }
}
