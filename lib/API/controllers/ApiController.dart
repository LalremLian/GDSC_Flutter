import 'dart:convert';

import 'package:dummy/API/model/LoginModel.dart';
import 'package:dummy/API/model/response_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../model/post_model.dart';
import '../service/remote_services.dart';

class ApiController extends GetxController {
  var isLoaded = false;
  var postList = <Post>[].obs;

  var loginDataList = <Welcome>[];

  //var loginDataList  = <Login>[].obs;
  List<Welcome> menuries = [];

  // final Map<String, dynamic> userdata;
  Map<String, dynamic> userdata = {};

  var loginList = <Welcome>[];

  // List<Welcome>? list = [];
  var list = <String?>[].obs;

  //var userdata;

  void getData() async {
    var posts = await RemoteService().getPosts();
    if (posts != null) {
      postList.value = posts;
      isLoaded = true;
    }
  }

  //region For Login
  void getLogin(String username, String password) async {
    var login = await RemoteService().getLoginData(username, password);

    //var body = json.decode(login.body);

/*    List data = json.decode(login.body)['data'];
    List<Welcome>? menuries = [];

    menuries.add(data);*/
    //userdata = json.decode(login.body);
    //userdata = json.decode(login.body);

    //Login data = loginFromJson(login.body);

    list.add(login!);
    //loginList =login;

    //userdata = json.decode(login.body);

    // userdata = json.decode(login.body);
/*    Welcome welcome = Welcome.fromJson(userdata);
    loginDataList.add(welcome);*/

/*    List<Welcome> networkOptions = login.body['data']['id']
        .map<Welcome>((x) => Welcome.fromJson(x))
        .toList();*/

    //userdata.forEach((k, v) => list.add(userdata[k].toString()));

    //print("ApiController : $userdata['data']['id']");
    print("ApiController : $list");

    Get.toNamed("/loginProfile");

    //.............................................This will give us only Status
/*    if(login != null)
    {
      loginDataList.value = login;

      print(login);
      isLoaded = true;
      if(isLoaded)
        {
          Get.toNamed("/loginProfile");
        }
    }*/
  }

  //endregion

  late ScrollController controller;

  RxInt page = 0.obs;

  final int limit = 20;

  var isFirstLoadRunning = false;
  var hasNextPage = true;

  var isLoadMoreRunning = false;

  // List posts = [];

  void loadMore() async {
    if (hasNextPage == true &&
        isFirstLoadRunning == false &&
        isLoadMoreRunning == false &&
        controller.position.extentAfter < 300) {

      isLoadMoreRunning = true; // Display a progress indicator at the bottom

      page += 1; // Increase _page by 1

      var fetchedPosts = await RemoteService().getPostsVersion2(page, limit);
      if (fetchedPosts != null) {
        // postList.value = posts;
        postList.addAll(fetchedPosts);
        // isLoaded = true;
      } else {
        hasNextPage = false;
      }

      isLoadMoreRunning = false;
    }
  }

  void firstLoad(RxInt page, int limit) async {
    isFirstLoadRunning = true;

    var posts = await RemoteService().getPostsVersion2(page, limit);
    if (posts != null) {
      postList.value = posts;
      isLoaded = true;
    }

/*    try {
      final res =
      await http.get(Uri.parse("$_baseUrl?_page=$_page&_limit=$_limit"));

        _posts = json.decode(res.body);

    } catch (err) {
      if (kDebugMode) {
        print('Something went wrong');
      }
    }*/

    isFirstLoadRunning = false;
  }
}
