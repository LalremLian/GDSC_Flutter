import 'package:dummy/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //...........................Material widget/GetMaterialApp is the root of your application
    return GetMaterialApp(
      title: 'Dummy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: appRoutes(),
      initialRoute: "/splashScreen",

      //..............................................This one removes Debug Tag
      debugShowCheckedModeBanner: false,
    );
  }
}
