import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shivam_kushwah_final/core/model/fetchdata_response.dart';

class NavSecondController extends GetxController{
  RxString phone="".obs;
  RxString CurrentAddress="".obs;
  RxString CurrentTime="".obs;
  RxString CurrentDate="".obs;


  RxString namess="".obs;
  RxString ID= "".obs;

  RxBool circleChange = true.obs;
  RxBool dataId = true.obs;

  late TextEditingController names=TextEditingController();
  late TextEditingController email=TextEditingController();
  late TextEditingController password=TextEditingController();
  late TextEditingController phoneno=TextEditingController();

  List <FetchDataResponse>DataTableList=<FetchDataResponse>[].obs;





  @override
  void onInit() async {
    printdata();
    super.onInit();
  }
  printdata()async{
    print("Hii navsecond printdata");
    SharedPreferences prefs =await SharedPreferences.getInstance();
    phone.value= prefs.getString("phone")!;
    ID.value= prefs.getString("id")!;
    print(phone.value);
    print("data retrieved ");
    // fetchDataTable();
  }
  DetailsController() {

  }


// SharedPreferences prefs =await SharedPreferences.getInstance();
// CurrentAddress.value= prefs.getString("currentTime")!;
// CurrentTime.value= prefs.getString("currentAddress")!;
// CurrentDate.value= prefs.getString("currentDate")!;
// namess.value= prefs.getString("name")!;
// print('hogya');
// print(namess);
}