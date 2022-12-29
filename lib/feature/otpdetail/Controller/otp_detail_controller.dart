import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shivam_kushwah_final/core/repository/signup/signup_repo.dart';
import 'package:shivam_kushwah_final/core/repository/signup/signup_repo_impl.dart';
import 'package:shivam_kushwah_final/core/routes.dart';
import 'package:shivam_kushwah_final/feature/signup/controller/signup_controller.dart';


class OtpDetailController extends GetxController {
  GlobalKey<FormState> SignupFormKey = GlobalKey<FormState>();

  late TextEditingController NameController = TextEditingController();
  late TextEditingController emailIdController = TextEditingController();
  late TextEditingController phoneCont = TextEditingController();
  late TextEditingController passwordController = TextEditingController();

  late SignupRepo _signupRepo;

  RxBool loader = false.obs;

  OtpDetailController() {
    _signupRepo = Get.find<SignupRepoImpl>();
  }

  signupAPI() async {
    var isValide = SignupFormKey.currentState?.validate();
     phoneCont = SignupController.phoneController;

    if (isValide == true) {
      final response = await _signupRepo.signupAPI(NameController.text,
          emailIdController.text, passwordController.text, phoneCont.text);
      print("User created by API");
      print("response: $response");
      addUser();   //function for post data on firebase
      Get.offAndToNamed(Routes.login);  //going to login page

    } else {
      print("form is not validate");
      Get.to(Routes.signup);    //going to signup page
    }
  }


  //post data by fireabase
  addUser() {
    var name = NameController.text;
    var email = emailIdController.text;
    var phone = phoneCont.value.text;
    var password = passwordController.text;

    Map<String, dynamic> userData = {
      "name": name,
      "email": email,
      "phone": phone,
      "password": password,
    };

    FirebaseFirestore.instance.collection("users").add(userData);
    print("user created by firebase");
  }
}
