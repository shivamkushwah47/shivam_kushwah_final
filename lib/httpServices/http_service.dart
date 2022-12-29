import 'package:dio/dio.dart';

abstract class HttpService {
  void init();
  Future<Response> signupAPIRequest(String Name1, String emailId1, String password1,String Number1);
  Future<Response> fetchDataAPIRequest(String myNumber, String password);



}