import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:project_3/app/modules/userInput/controller/userinput_controller.dart';
import 'package:project_3/widget/K_appbar.dart';

import '../../../../widget/K_TextFromField.dart';

class UserInputView extends GetView<UserInputController> {
  const UserInputView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(UserInputController());
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
              KTextFromField(controller: controller, labelbox: Text('User Name',style: TextStyle(color: Colors.purple),),),
              SizedBox(height: 20,),
              
              ElevatedButton(onPressed: () {
                controller.checkData();
              }, child: Text('login'))
            ],
          ),
        ),
      ),
    );
  }
}

