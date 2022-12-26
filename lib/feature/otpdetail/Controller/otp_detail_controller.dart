import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shivam_kushwah_final/core/routes.dart';
import '../../../core/model/fetchdata_response.dart';
import '../../../core/repository/signup/signup_repo.dart';
import '../../../core/repository/signup/signup_repo_impl.dart';
import '../../../httpServices/http_service.dart';

class OtpDetailController extends GetxController {
  GlobalKey<FormState> SignupFormKey = GlobalKey<FormState>();

  late TextEditingController NameController = TextEditingController();
  late TextEditingController emailIdController = TextEditingController();
  late TextEditingController phoneController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();

  late SignupRepo _signupRepo;
  // late HttpService _HttpService;

  RxBool loader = false.obs;
  List<FetchDataResponse> internDataList = <FetchDataResponse>[];

  OtpDetailController() {
    _signupRepo = Get.find<SignupRepoImpl>();
  }

  // fetchDataInterns() async{
  //   loader.value=false;
  //   final fetchResponse = await _signupRepo.fetchDataAPI(mynumber);
  //   if(fetchResponse!=null) {
  //     loader.value=true;
  //     internDataList = fetchResponse.cast<FetchDataResponse>();
  //
  //     print(fetchResponse[0].name);
  //     print(fetchResponse[0].password);
  //     print(fetchResponse[0].emailId);
  //     print(fetchResponse[0].phone);
  //
  //   }
  // }

  signupAPI() async {
    var isValide = SignupFormKey.currentState?.validate();

    if (isValide == true) {
      final response = await _signupRepo.signupAPI(NameController.text,
          emailIdController.text, passwordController.text, phoneController.text);
      print("User created by API");
      print("response: $response");
      addUser();
      Get.offAndToNamed(Routes.navigationbar);

    } else {
      print("form is not validate");
      Get.to(Routes.signup);
    }
  }


  //post data by fireabase

  addUser() {
    var name = NameController.text;
    var email = emailIdController.text;
    var phone = phoneController.value.text;
    var password = passwordController.text;

    Map<String, dynamic> userData = {
      "name": name,
      "email": email,
      "phone": phone,
      "password": password,
    };

    FirebaseFirestore.instance.collection("users").add(userData);
    print("user created");
  }
}
