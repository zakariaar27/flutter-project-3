import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:project_3/app/modules/homepage/view/home_page_view.dart';

class UserInputController extends GetxController {

  TextEditingController textEditingController =TextEditingController();
  @override
  void onClose() {
    textEditingController.dispose();
    super.onClose();
  }
  checkData(){
    if (textEditingController.text == ""){
      Get.snackbar('Input Field', "Text Feild is Empty" ,duration: Duration(seconds: 5),) ;
    }else if (textEditingController.text.contains(" ")){
Get.snackbar("Input Field", "Invalid Input Field",duration: Duration(seconds: 5),);
    }else{
      Get.to(() => HomePageView());
    }
  }
}
