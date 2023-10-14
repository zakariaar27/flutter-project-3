import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:project_3/app/modules/splashscreen/controller/spalash_controller.dart';

class SplashView extends GetView<SplashController>  {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 70,
            width: 70,
            child:
                CircularProgressIndicator(color: Colors.purple, strokeWidth: 7),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Loading...',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
