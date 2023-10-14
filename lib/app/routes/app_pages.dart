import 'package:get/get.dart';

import '../modules/mainapppage/bindings/mainpage_bindings.dart';
import '../modules/mainapppage/view/mainpage_view.dart';
import '../modules/splashscreen/bindings/splash_bindings.dart';
import '../modules/splashscreen/view/splash_view.dart';
import '../modules/userInput/bindings/userinput_bindings.dart';
import '../modules/userInput/view/userinput_view.dart';

part  'app_routes.dart';

class AppPages {
  static const initialpages = Routes.splashscreen;
  static final pages = [
    GetPage(
        name: _path.splashScreen,
        page: () => const SplashView(),
        binding: Splashbindings()),
    GetPage(
        name: _path.mainAppScreen,
        page: () => const MainAppPageView(),
        binding: MainAppPagebindings()),
        GetPage(
        name: _path.userInputScreen,
        page: () => const UserInputView(),
        binding:   UserInputbindigs()),
         
  ];
}
