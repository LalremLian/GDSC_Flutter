import 'package:dummy/API/view/api_post_method.dart';
import 'package:dummy/API/view/login_profile_page.dart';
import 'package:dummy/binding/FlutterTutorialBinding.dart';
import 'package:dummy/view/bottom_nav_bar_page.dart';
import 'package:dummy/view/buttonLayouts_page.dart';
import 'package:dummy/view/card_swiper_page.dart';
import 'package:dummy/view/productBox_page.dart';
import 'package:dummy/view/splash_screen_page.dart';
import 'package:get/get.dart';

import 'API/view/api_get_method.dart';
import 'API/view/api_home_page.dart';
import 'GDSC/view/GDSC_home_page.dart';
import 'binding/ApiHomeBinding.dart';
import 'crash_course_flutter/view/IconChangerPage.dart';
import 'crash_course_flutter/view/ListViewPage.dart';

appRoutes() => [
      GetPage(name: "/splashScreen",
          page: () => const SplashScreen()),
      GetPage(name: "/dashboardScreen",
          page: () => const BottomNavBar()),
      GetPage(
          name: "/buttonLayoutScreen",
          page: () => const ButtonLayouts(),
          middlewares: [MyMiddelware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 500)),
      GetPage(
          name: "/productBoxScreen",
          page: () => const ProductBox(
              name: "Calvert",
              description: "How don't know",
              price: 12,
              image: "https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png")),
      GetPage(name: "/GDSCTravelScreen",
          page: () => const GDSC_Home()),
      GetPage(
          name: "/apiIntegrationScreen",
          page: () => const ApiMainPage()),
      GetPage(
          name: "/getMethod",
          page: () => ApiHome(),
          binding: ApiHomeBinding()),
      GetPage(
          name: "/postMethod",
          page: () => const ApiPostMethod(),
          binding: ApiHomeBinding()),
      GetPage(
          name: "/loginProfile",
          page: () => LoginPage(),
          binding: ApiHomeBinding()),
      GetPage(
          name: "/cardSwiperScreen",
          page: () => CardSwiper(title: "CardSwiper")),
      GetPage(name: "/flutterTutorialScreen",
          page: () => FlutterTutorial(),
          binding: FlutterTutorialBinding(),
          middlewares: [MyMiddelware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 500)),
      GetPage(name: "/iconChangerScreen",
          page: () => const MainBodyStateful()),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}
