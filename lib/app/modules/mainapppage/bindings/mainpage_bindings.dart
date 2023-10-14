import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:project_3/app/modules/mainapppage/controller/mainpage_controller.dart';

class MainAppPagebindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainAppPageController>(() => MainAppPageController());
  }
}
