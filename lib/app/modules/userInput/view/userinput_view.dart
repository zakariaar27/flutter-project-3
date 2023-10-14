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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  label:  Text('User Name'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                   focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text('login'))
            ],
          ),
        ),
      ),
    );
  }
}
