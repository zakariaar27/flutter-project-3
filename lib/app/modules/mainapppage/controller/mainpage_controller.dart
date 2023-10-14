import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:project_3/storage/localdata.dart';

class MainAppPageController extends GetxController {
  RxBool theme = false.obs;
  @override
  void onInit() {
    cheakTheme();

    super.onInit();
  }

  cheakTheme() async {
    theme.value = await Localdata().getThemeData();
    Get.changeThemeMode(theme.value ? ThemeMode.dark : ThemeMode.light);
  }

  changeTheme() {
    theme.value = !theme.value;
    Localdata().setThemeData(theme.value);
    Get.changeThemeMode(theme.value ? ThemeMode.dark: ThemeMode.light);
  }
}
