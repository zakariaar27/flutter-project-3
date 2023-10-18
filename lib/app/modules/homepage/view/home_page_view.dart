import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:project_3/app/modules/homepage/controller/home_page_controller.dart';

import 'package:project_3/widget/K_appbar.dart';
import 'package:project_3/widget/k_Text.dart';
import 'package:project_3/widget/k_app_img.dart';
import 'package:project_3/widget/k_grid_view.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageController());
    return Scaffold(
      appBar: KAppBar(title: 'Home Page View'),
      body: Obx(
        () => controller.isLoading.value
            ? Center(
                child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: Get.width / 10,
                            width: Get.width / 10,
                            child: CircularProgressIndicator(
                              strokeWidth: 5,
                              backgroundColor: Colors.orange,
                              color: Colors.purple,
                            ),
                          ),
                          SizedBox(
                            height: Get.width / 5,
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(Icons.cancel),
                            label: Text('Cancel'),
                          ),
                        ]),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          KAppImage(
                              imageUrl:
                                  controller.userImage.value,
                                  ),
                          Column(
                            children: [
                              KText(
                                textType: controller.user.value,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                              KText(
                                textType: controller.userNameMe.value,
                                fontSize: 20,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      KText(
                          textType:
                             controller.userBio.value,),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text('Sort^'),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text('Sort^'),
                          SizedBox(
                            width: 40,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.grid_view),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // KListView()
                      KGridView()
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
