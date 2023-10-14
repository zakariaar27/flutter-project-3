import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class UserInputController extends GetxController {

  TextEditingController textEditingController =TextEditingController();
  @override
  void onClose() {
    textEditingController.dispose();
    super.onClose();
  }
}
