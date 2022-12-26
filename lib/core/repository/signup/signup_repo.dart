







import '../../model/signup_response.dart';

abstract class SignupRepo{

  Future<SignupResponse> signupAPI(String Name1, String emailId1, String password1,String Number1);
}