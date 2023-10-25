import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:project_3/app/modules/homepage/controller/home_page_controller.dart';

import 'package:project_3/widget/K_appbar.dart';
import 'package:project_3/widget/k_Text.dart';
import 'package:project_3/widget/k_app_img.dart';


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
                            imageUrl: controller.userImage.value,
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
                        textType: controller.userBio.value,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              controller.showSortDai();
                            },
                            child: Text('Sort^'),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text('Repo List'),
                          SizedBox(
                            width: 40,
                          ),
                          InkWell(
                            child: IconButton(
                              onPressed: () {
                                controller.changeListView();
                              },
                              icon: controller.isListView.value
                                  ? Icon(Icons.list)
                                  : Icon(Icons.grid_view),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Obx(() => controller.repoList.isEmpty
                          ? const SizedBox()
                          : controller.isListView.value
                              ? SizedBox(
                                  height: 120 * 20,
                                  child: ListView.separated(
                                    itemCount: 20,
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                        height: 10,
                                      );
                                    },
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {},
                                        child: Container(
                                          
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          height: 100,
                                         
                                          color: Colors.indigo,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  KText(
                                                    textType: controller
                                                        .repoList[index].name,
                                                    fontWeight: FontWeight.bold,fontSize: 20,
                                                  ),
                                                  SizedBox(height: 10,),
                                                  KText(
                                                      textType: controller
                                                          .repoList[index]
                                                          .createdAt),
                                                  KText(
                                                      textType: controller
                                                          .repoList[index]
                                                          .updatedAt),
                                                  KText(
                                                      textType: controller
                                                          .repoList[index]
                                                          .pushedAt),
                                                ],
                                              ),
                                              ElevatedButton(
                                                onPressed: () {},
                                                child: KText(
                                                  textType: 'Public',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              : SizedBox(
                                  height: 100 * 10,
                                  child: GridView.builder(
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisSpacing: 20,
                                            mainAxisSpacing: 20,
                                            crossAxisCount: 2),
                                    itemCount: 20,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 100,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          color: Colors.orange,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              KText(
                                                textType: controller
                                                    .repoList[index].name,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                              SizedBox(height: 20,),
                                              KText(
                                                  textType: controller
                                                      .repoList[index]
                                                      .createdAt),
                                              KText(
                                                  textType: controller
                                                      .repoList[index]
                                                      .updatedAt),
                                              KText(
                                                  textType: controller
                                                      .repoList[index]
                                                      .pushedAt),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              ElevatedButton(
                                                onPressed: () {},
                                                child: KText(
                                                  textType: 'Public',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  )))

                      // KListView()
                      // KGridView()
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
