import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NavthirdController extends GetxController {
  var setEmail = "".obs;
  var setName = "".obs;
  var setNum = "".obs;
  var setPass = "".obs;


  @override
  void onInit() {
    // TODO: implement initState
    super.onInit();
    printData();
  }

  printData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setName.value = prefs.getString("name")!;
    setEmail.value = prefs.getString("emailId")! ;
    setNum.value = prefs.getString("phone")!;
    setPass.value = prefs.getString("password")!;
  }
}
