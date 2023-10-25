import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:project_3/app/modules/homepage/model/repo_model.dart';

import '../../mainapppage/controller/mainpage_controller.dart';

class HomePageController extends GetxController {
  var arData;
  @override
  void onInit() {
    isLoading.value = true;
    arData = Get.arguments;
    callUserData(arData);
    // print(repoList);
    super.onInit();
  }

  RxBool isLoading = false.obs;
  RxBool isListView = false.obs;
  RxList<RepoModel> repoList = <RepoModel>[].obs;

  RxString userNameMe = "".obs;
  RxString user = "".obs;
  RxString userImage = "".obs;
  RxString userBio = "".obs;

  changeListView() {
    isListView.value = !isListView.value;
  }

  callUserData(String userName) async {
    String url = "https://api.github.com/users/$userName";
    var responeData = await http.get(Uri.parse(url));
    if (responeData.statusCode == 200) {
      var userData = json.decode(responeData.body);
      user.value = userData["name"] ?? " ";
      userNameMe.value = userData["login"] ?? "";
      userImage.value = userData["avatar_url"] ?? "";
      userBio.value = userData["bio"] ?? "";

      callUserRepoData(userName);
    } else {
      Get.back();
    }
  }

  callUserRepoData(String userName) async {
    String url = "https://api.github.com/users/$userName/repos";
    var responeData = await http.get(Uri.parse(url));
    if (responeData.statusCode == 200) {
      var userData = json.decode(responeData.body);

      for (var element in userData) {
        repoList.add(
          RepoModel(
            name: element["name"].toString(),
            repourl: element["html_url"].toString(),
            createdAt: element["created_at"].toString(),
            updatedAt: element["updated_at"].toString(),
            pushedAt: element["pushed_at"].toString(),
          ),
        );
      }
      repoList.refresh();
      isLoading.value = false;
    }
  }
  nameAtoZ(){
    repoList.sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()),);
    repoList.refresh();
    Get.back();
  }
  nameZtoA(){
    repoList.sort((a, b) => b.name.toLowerCase().compareTo(a.name.toLowerCase()),);
    repoList.refresh();
    Get.back();
  }

  showSortDai() {
 final colorController=Get.put(MainAppPageController());
    Get.bottomSheet(
        Container(
          padding: EdgeInsets.only(top: 30,left: 20),
          height: 300,
          width: double.infinity,
          color: colorController.theme.value? Colors.grey: Colors.purple,
          child: ListView(
            children: [
              InkWell(
                onTap: () {
                   nameAtoZ();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Name a-z'),
                ),
              ),
              InkWell(
                onTap: () {
                  nameZtoA();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Name z-a'),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Date order by create repo'),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Date order by push repo'),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Date order by update repo'),
                ),
              ),
            ],
          ),
        ),
        enterBottomSheetDuration: Duration(seconds: 1),
        exitBottomSheetDuration: Duration(seconds: 1),
      );}
}
