import 'package:dummy/API/view/api_home.dart';
import 'package:dummy/GDSC/view/GDSC_home_page.dart';
import 'package:dummy/OCR/view/home_page.dart';
import 'package:dummy/crash_course_flutter/view/ListViewPage.dart';
import 'package:dummy/main.dart';
import 'package:dummy/view/bottom_nav_bar_page.dart';
import 'package:dummy/view/card_swiper_page.dart';
import 'package:dummy/view/productBox_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../GDSC/model/travel.dart';
import 'buttonLayouts_page.dart';

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
                      //..................................Navigator.pop is not mandatory
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go Back'),
                    ),
                  ),
                  Padding(
                    //....................................................Button Layouts
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(29, 135, 167, 1),
                      ),
                      //..................................Navigator.pop is not mandatory
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ButtonLayouts()),
                        );
                      },
                      child: const Text('Button Layouts'),
                    ),
                  ),
                  Padding(
                    //.................................................Button ProductBox
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(29, 135, 167, 1),
                      ),
                      //..................................Navigator.pop is not mandatory
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProductBox(
                                  name: 'name',
                                  description: 'description',
                                  price: 100,
                                  image:
                                  'https://m.media-amazon.com/images/M/MV5BMjc2NjYyMzgtMmExMi00YzllLTgxNjgtNjA4MmUzMWZlNDZkXkEyXkFqcGdeQXRyYW5zY29kZS13b3JrZmxvdw@@._V1_.jpg')),
                        );
                      },
                      child: const Text('Product Box'),
                    ),
                  ),
                  Padding(
                    //..................................................Button GDSC_Home
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(29, 135, 167, 1),
                      ),
                      //..................................Navigator.pop is not mandatory
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GDSC_Home()),
                        );
                      },
                      child: const Text('GDSC Travel App'),
                    ),
                  ),
                  Padding(
                    //...................................................Button OCR_Home
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(29, 135, 167, 1),
                      ),
                      //..................................Navigator.pop is not mandatory
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
                    //............................................Button API Integration
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(29, 135, 167, 1),
                      ),
                      //..................................Navigator.pop is not mandatory
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ApiHome()),
                        );
                      },
                      child: const Text('API Integration'),
                    ),
                  ),
                  Padding(
                    //.................................................Button CardSwiper
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(29, 135, 167, 1),
                      ),
                      //..................................Navigator.pop is not mandatory
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardSwiper(
                                title: "Card Swiper",
                              )),
                        );
                      },
                      child: const Text('Card Swiper'),
                    ),
                  ),
                  Padding(
                    //.................................................Button CardSwiper
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(29, 135, 167, 1),
                      ),
                      //..................................Navigator.pop is not mandatory
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
                    //.................................................Button Crash_Course Flutter
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(29, 135, 167, 1),
                      ),
                      //..................................Navigator.pop is not mandatory
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FlutterTutorial()),
                        );
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
