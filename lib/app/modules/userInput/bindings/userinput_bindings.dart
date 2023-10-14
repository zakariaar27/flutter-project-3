import 'package:get/get.dart';
import 'package:project_3/app/modules/userInput/controller/userinput_controller.dart';

class UserInputbindigs extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserInputController>(() => UserInputController());
  }
}
