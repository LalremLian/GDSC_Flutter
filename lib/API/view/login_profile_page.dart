import 'package:dummy/API/controllers/ApiController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../model/LoginModel.dart';
import '../widgets/ShimeringWidget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final apiController = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login Profile'),
        ),
        body: /*Text(apiController.list[1].message),*/

      Obx(
          () => Visibility(
            //...................................................if isLoaded is true
            //visible: apiController.isLoaded,
            child: ListView.builder(
              itemCount: apiController.list.length,
              itemBuilder: (context, index) {
                return Text(apiController.list.string);
              },
            ),

            replacement: const ShimmerWidget(),
          ),
        )

    );
  }
}


/*
class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _ApiHomeState();
}

class _ApiHomeState extends State<LoginPage> {

  //........................................................Declaring Controller
  final apiController = Get.put(ApiController());

  Map<String, dynamic> userList = {};
  var loginDataList  = <Welcome>[];

  @override
  void initState()
  {
    super.initState();
    loginDataList = apiController.loginDataList;
    print("Login : $loginDataList");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('API Integration'),
        ),
        body: Text(userList["status"]),
    );
  }
}*/



