import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl_phone_field/helpers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shivam_kushwah_final/core/model/fetchdata_response.dart';
import 'package:shivam_kushwah_final/core/repository/loginpage/login_repo.dart';
import 'package:shivam_kushwah_final/core/repository/loginpage/login_repo_impl.dart';
import 'package:shivam_kushwah_final/core/routes.dart';

class LoginController extends GetxController {

  final getStorage = GetStorage();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();

  RxBool autologin = false.obs;
  RxBool ispasshidden = true.obs;
  bool formSatus = true;

  var email = '';
  var password = '';

  login() {
    getStorage.write("id", 1);
    getStorage.write("name", "shivam singh");
    Get.offAllNamed(Routes.dashboard);
  }

  @override
  void onInit() {
    super.onInit();
    autologin.value = true;
  }



  isEmail(email) {
    bool isEmailValid = EmailValidator.validate(email);
    if (!isEmailValid) {
      bool isdigit = isNumeric(email);
      if (isdigit) {
        if (!(email.length == 10)) {
          formSatus = false;
          Get.snackbar(
            'Warning',
            'Please enter 10 digit number',
            colorText: Colors.white,
            backgroundColor: Colors.blue,
          );
          return false;
        }
      } else {
        formSatus = false;
        Get.snackbar(
          'Warning',
          'Plese Enter valid email',
          colorText: Colors.white,
          backgroundColor:  Colors.red,
        );
        return false;
      }
    }
    return true;
  }

  isValid(value, msg) {
    if (value == null || value.isEmpty) {
      return msg;
    }
    return null;
  }

  signupformvalid() {
    if (loginFormKey.currentState!.validate()) {
      if (isEmail(emailController.text)) {
        print("Login Form vaidated");
        fetchData();
        return true;

      }
    }
  }

  void checkconnl() async {
    var connectionresult = await (Connectivity().checkConnectivity());
    if (connectionresult == ConnectivityResult.none) {
      print("No internet Connection");
      Get.snackbar("noInternet", "Please turn on internet connection",
          backgroundColor: Colors.redAccent,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM
      );
    } else if (connectionresult == ConnectivityResult.wifi) {
      print("wifi connection");

    } else if (connectionresult == ConnectivityResult.mobile) {
      print("mobileData connection");

    }
  }



  List<FetchDataResponse> internDataList = <FetchDataResponse>[].obs;
  // late LoginRepoImpl _loginRepo;
  LoginRepoImpl _loginRepo =  Get.find<LoginRepoImpl>() ;
  // Logincontroller() {
  //   _loginRepo = Get.find<LoginRepoImpl>();
  // }

  fetchData() async {
    final response = await _loginRepo.fetchDataAPI(emailController.text,passwordController.text);
    var isvalid = loginFormKey.currentState?.validate();
    if(isvalid==true){
      if(response![0].response == 1){
        print("Response Stored");
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setInt("response", response[0].response!);
        prefs.setString("Id", response[0].id!);
        prefs.setString("name", response[0].name!);
        prefs.setString("emailId", response[0].emailId!);
        prefs.setString("phone", response[0].phone!);
        prefs.setString("password", response[0].password!);

        Get.toNamed(Routes.navigationbar);
      }else{

        Get.snackbar("warning", "invalid Credentials",
            colorText: Colors.white,
            backgroundColor: Colors.red,
            snackPosition: SnackPosition.BOTTOM
        );
      }
    }
  }

}