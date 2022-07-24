import 'package:dummy/OCR/view/home_page.dart';
import 'package:dummy/view/bottom_nav_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
              height: 650,
              child: Lottie.asset(
                'assets/bg_turbines.json',
                fit: BoxFit.cover,
              )),
          ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(29, 135, 167, 1),
                      ),
                      //..........................Navigator.pop is not mandatory
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'),
                    ),
                  ),
                  Padding(
                    //............................................Button Layouts
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(29, 135, 167, 1),
                      ),
                      onPressed: () {Get.toNamed("/buttonLayoutScreen");
                      },
                      child: const Text('Button Layouts'),
                    ),
                  ),
                  Padding(
                    //.........................................Button ProductBox
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(29, 135, 167, 1),
                      ),
                      onPressed: () {
                        Get.toNamed("/productBoxScreen",
                            arguments: {"Calvert", "How don't know", 12, "https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png"});
                      },
                      child: const Text('Product Box'),
                    ),
                  ),
                  Padding(
                    //..........................................Button GDSC_Home
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(29, 135, 167, 1),
                      ),
                      onPressed: () {Get.toNamed("/GDSCTravelScreen");
                      },
                      child: const Text('GDSC Travel App'),
                    ),
                  ),
                  Padding(
                    //...........................................Button OCR_Home
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(29, 135, 167, 1),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OCR_Home(
                                title: 'sdf',
                              )),
                        );
                      },
                      child: const Text('OCR Project'),
                    ),
                  ),
                  Padding(
                    //....................................Button API Integration
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(29, 135, 167, 1),
                      ),
                      onPressed: () {Get.toNamed("/apiIntegrationScreen");
                      },
                      child: const Text('API Integration'),
                    ),
                  ),
                  Padding(
                    //.........................................Button CardSwiper
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(29, 135, 167, 1),
                      ),
                      onPressed: () {Get.toNamed("/cardSwiperScreen");
                      },
                      child: const Text('Card Swiper'),
                    ),
                  ),
                  Padding(
                    //.......................................BottomNavigationBar
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(29, 135, 167, 1),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomNavBar()),
                        );
                      },
                      child: const Text('Bottom NavBar'),
                    ),
                  ),
                  Padding(
                    //...............................Button Crash_Course Flutter
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(29, 135, 167, 1),
                      ),
                      onPressed: () {Get.toNamed("/flutterTutorialScreen");
                      },
                      child: const Text('Flutter Tutorial'),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
