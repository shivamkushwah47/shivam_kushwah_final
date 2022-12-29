import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:shivam_kushwah_final/httpServices/http_service.dart';
import '../core/url_constant.dart';


class HttpServiceImpl implements HttpService {
  late Dio _dio;

  @override
  void init() {
    _dio = Dio(BaseOptions(baseUrl: URLConstant.baseUrl));
  }

  @override
  Future<Response> signupAPIRequest(String Name1, String emailId1, String password1,String Number1) async {
    Response response;
    try {
      print(URLConstant.baseUrl +
          URLConstant.signup +
          'name=$Name1&emailId=$emailId1&password=$password1&phone=$Number1');
      response = await _dio.post(URLConstant.baseUrl + URLConstant.signup +
          'name=$Name1&emailId=$emailId1&password=$password1&phone=$Number1');
      print("done");
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> fetchDataAPIRequest(String myNumber, String password) async {
    Response response;
    try {
      print("shivam  bhai");
      print('${URLConstant.baseUrl + URLConstant.fetchDataIntern}userName=$myNumber&password=$password');
      response = await _dio.get(
          '${URLConstant.baseUrl + URLConstant.fetchDataIntern}userName=$myNumber&password=$password');
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }


}
