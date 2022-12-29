import 'dart:convert';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:shivam_kushwah_final/core/model/fetchdata_response.dart';
import 'package:shivam_kushwah_final/httpServices/http_service.dart';
import 'package:shivam_kushwah_final/httpServices/http_service_impl.dart';
import 'login_repo.dart';

class LoginRepoImpl implements LoginRepo {
  late HttpService _httpService;

  LoginRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }

  @override
  Future<List<FetchDataResponse>?> fetchDataAPI(String myNumber, String password) async {
    final response = await _httpService.fetchDataAPIRequest(myNumber, password);

    if (response.statusCode == 200) {
      return FetchDataResponseFromJson(response.toString());
    }
  }
// return null;
}

List<FetchDataResponse> FetchDataResponseFromJson(String str) =>
    List<FetchDataResponse>.from(
        json.decode(str).map((x) => FetchDataResponse.fromJson(x)));
