import 'dart:convert';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:project_3/app/modules/homepage/model/repo_model.dart';

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
  RxBool isListView =false.obs;
  RxList<RepoModel> repoList = <RepoModel>[].obs;

  RxString userNameMe = "".obs;
  RxString user = "".obs;
  RxString userImage = "".obs;
  RxString userBio = "".obs;


  changeListView(){
    isListView.value=!isListView.value;
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
   ;
  }
}
}