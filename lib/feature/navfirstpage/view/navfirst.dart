import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shivam_kushwah_final/feature/navfirstpage/view/appdrawer.dart';

import '../controller/navfirstcontroller.dart';

class Navfirst extends GetView<Navfirstcontroller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(

        backgroundColor: Colors.green,
        elevation: 0,
        title: Obx(()=>Text(controller.name.value,
        style: TextStyle(color: Colors.white,
        fontSize: 20),)
      )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(
          () => SingleChildScrollView(
            child: (Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 350,
                    // height: 700,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 20,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          controller.name.value,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(controller.email.value,
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.grey)),
                                      ],
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      backgroundImage: controller
                                                  .isImageSet.value ==
                                              true
                                          ? FileImage(File(controller
                                              .profilepicpath
                                              .value)) as ImageProvider
                                          : const AssetImage(
                                              'assets/images/camera.webp'),
                                      radius: 30,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    height: 57, //height of button
                                    width: 250, //width of button
                                    child: controller.issuccess.value == false
                                        ? ElevatedButton(     //timeIn button...
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.yellow.shade600,
                                                //background color of button
                                                side: BorderSide(
                                                    width: 1,
                                                    color: Colors.amber),
                                                //border width and color
                                                elevation: 3,
                                                //elevation of button
                                                shape: RoundedRectangleBorder(
                                                    //to set border radius to button
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                padding: EdgeInsets.all(
                                                    20) //content padding inside button
                                                ),
                                            onPressed: () {
                                              controller.takephoto(
                                                  ImageSource.camera);
                                              controller.issuccess.value = true;
                                              print('function cld');
                                              controller.TimeIn();
                                            },
                                            child: Text("Time In",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700)))

                                        : ElevatedButton(  //timeOut button...

                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.yellow.shade600,
                                                //background color of button
                                                side: BorderSide(
                                                    width: 1,
                                                    color: Colors.amber),
                                                //border width and color
                                                elevation: 3,
                                                //elevation of button
                                                shape: RoundedRectangleBorder(
                                                    //to set border radius to button
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                padding: EdgeInsets.all(
                                                    20) //content padding inside button
                                                ),
                                            onPressed: () {
                                              controller.takephoto(ImageSource.camera);
                                              controller.issuccess.value =false;
                                              controller.TimeOut();
                                            },
                                            child: Text("Time Out",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700)))),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 350,
                          child: Card(
                            elevation: 20,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.blue,
                                    size: 20,
                                  ),
                                  title: Text(
                                    'Your Location',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  trailing: Icon(
                                    Icons.refresh,
                                    color: Colors.blue,
                                    size: 20,
                                  ),
                                ),
                                Container(
                                  width: 320,
                                  height: 130,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Your Current Location is :",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black)),
                                      Text(
                                        textAlign: TextAlign.center,
                                        controller.currentAddress.value,
                                        style: TextStyle(
                                            fontSize: 15,
                                            // fontWeight: FontWeight.w400,
                                            color: Colors.blue),
                                      ),
                                      Text("Your Current Date & Time is : ",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("DATE :",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  // fontWeight: FontWeight.w800,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300)),
                                          Text(controller.currentDate.value,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  // fontWeight: FontWeight.w800,
                                                  color: Colors.blueGrey)),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("TIME :",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  // fontWeight: FontWeight.w800,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300)),
                                          Text(controller.currentTime.value,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  // fontWeight: FontWeight.w800,
                                                  color: Colors.blueGrey)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
