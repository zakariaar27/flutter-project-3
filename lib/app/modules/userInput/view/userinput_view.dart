import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/app/modules/mainapppage/controller/mainpage_controller.dart';
import 'package:project_3/app/modules/userInput/controller/userinput_controller.dart';
import 'package:project_3/widget/appbar.dart';

class UserInputView extends GetView<UserInputController> {
  const UserInputView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainAppPageController());
    return Scaffold(
      appBar: KAppBar(
        title: ("Change Theme"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Several dara from user input",style: TextStyle(color: Colors.purple,fontSize: 30),),
          ],
        ),
      ),
    );
  }
}

