import 'package:dummy/API/view/api_home.dart';
import 'package:dummy/GDSC/view/GDSC_home_page.dart';
import 'package:dummy/binding/ApiHomeBinding.dart';
import 'package:dummy/crash_course_flutter/view/ListViewPage.dart';
import 'package:dummy/view/bottom_nav_bar_page.dart';
import 'package:dummy/view/buttonLayouts_page.dart';
import 'package:dummy/view/card_swiper_page.dart';
import 'package:dummy/view/productBox_page.dart';
import 'package:dummy/view/splash_screen_page.dart';
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
        //This one is an old way (home: const SplashScreen())...................
        //home: const SplashScreen(),
      getPages: [
        GetPage(name: "/splashScreen", page: () => const SplashScreen()),
        GetPage(name: "/dashboardScreen", page: () => const BottomNavBar()),
        GetPage(name: "/buttonLayoutScreen", page: () => const ButtonLayouts()),
        GetPage(name: "/productBoxScreen", page: () => const ProductBox(name: "Calvert", description: "How don't know", price: 12, image: "https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png")),
        GetPage(name: "/GDSCTravelScreen", page: () => const GDSC_Home()),
        GetPage(name: "/apiIntegrationScreen", page: () => ApiHome(), binding: ApiHomeBinding()),
        GetPage(name: "/cardSwiperScreen", page: () => CardSwiper(title: "CardSwiper")),
        GetPage(name: "/flutterTutorialScreen", page: () => FlutterTutorial()),
      ],
      initialRoute: "/splashScreen",
      //..............................................This one removes Debug Tag
      debugShowCheckedModeBanner: false,
    );
  }
}



