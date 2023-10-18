import 'dart:convert';
import 'dart:html';
import 'dart:isolate';

import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart'as http;

class HomePageController extends GetxController{
 
  var arData;
  @override
  void onInit() {
    isLoading.value =true;
    arData= Get.arguments;
    callUserData(arData);
    super.onInit();
  }
  RxBool isLoading= false.obs;


  RxString userNameMe= "".obs;
  RxString user= "".obs;
  RxString userImage= "".obs;
  RxString userBio= "".obs;

callUserData( String userName)async{
  String url= "https://api.github.com/users/$userName";
var responeData= await http.get(Uri.parse(url));
  if (responeData.statusCode == 200){
    var userData= json.decode(responeData.body);
     user.value= userData ["name"]?? " ";
    userNameMe.value= userData["login"]?? "";
    userImage.value= userData["avatar_url"] ?? "";
    userBio.value=userData["bio"] ?? "";
  
    callUserRepoData(userName);
  } else{
    Get.back();
  }
}

callUserRepoData( String userName)async{
  String url= "https://api.github.com/users/$userName/repos";
var responeData= await http.get(Uri.parse(url));
  if (responeData.statusCode == 200){
    var userData= json.decode(responeData.body);
   
    print(userData);
    isLoading.value=false;
  }
}

}