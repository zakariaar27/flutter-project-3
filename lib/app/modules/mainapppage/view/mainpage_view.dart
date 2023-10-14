import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/app/modules/mainapppage/controller/mainpage_controller.dart';
import 'package:project_3/app/routes/app_pages.dart';

import 'package:project_3/theme/dark.dart';
import 'package:project_3/theme/light.dart';

class MainAppPageView extends GetView<MainAppPageController> {
  const MainAppPageView({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(MainAppPageController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: lightThemes ,
      darkTheme: darkThemes,
      initialRoute: AppPages.initialpages,
      getPages: AppPages.pages,
    );
  }
}
