import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project_3/app/modules/mainapppage/controller/mainpage_controller.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  const KAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainAppPageController());
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(title),
      actions: [
        Obx(() => IconButton(
            onPressed: () {
              controller.changeTheme();
            },
            icon: controller.theme.value
                ? Icon(Icons.light_mode)
                : Icon(Icons.dark_mode)))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70);
}
