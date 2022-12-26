import 'dart:convert';
import 'package:get/get.dart';
import 'package:shivam_kushwah_final/core/repository/signup/signup_repo.dart';
import '../../../httpServices/http_service.dart';
import '../../../httpServices/http_service_impl.dart';
import '../../model/signup_response.dart';


class SignupRepoImpl implements SignupRepo {
  late HttpService _httpService;

  SignupRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }

  @override
  Future<SignupResponse> signupAPI(String Name1, String emailId1, String password1,String Number1) async {
    // TODO: implement loginAPI
    final response = await _httpService.signupAPIRequest(Name1, emailId1, password1, Number1);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return SignupResponse.fromJson(ResponseMap);
  }



}



