import 'package:shivam_kushwah_final/core/model/fetchdata_response.dart';

abstract class LoginRepo{
  Future<List<FetchDataResponse>?> fetchDataAPI(String myNumber, String password);
}