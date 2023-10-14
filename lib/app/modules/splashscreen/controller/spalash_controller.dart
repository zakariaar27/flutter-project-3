import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:project_3/app/routes/app_pages.dart';


class SplashController extends GetxController {
  @override
  void onInit() {
    gotonextpage();

    super.onInit();
  }

  gotonextpage() async {
    Future.delayed(Duration(seconds: 3), () {
      Get.offAllNamed(Routes.userInputScreen);
    });
  }
}
