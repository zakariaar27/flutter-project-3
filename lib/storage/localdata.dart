import 'package:get_storage/get_storage.dart';

class Localdata {
  final box = GetStorage();
  final String userdata = "userdata";
  getThemeData() async {
    return await box.read(userdata) ?? false;
  }

  serThemeData(bool value) async {
    await box.write(userdata, value);
    return true;
  }
}
