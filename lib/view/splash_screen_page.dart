import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  //static String routeName = "/splashScreen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>{
              Get.offAllNamed("/dashboardScreen")
            }
/*                Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => const BottomNavBar()
            )*/
        );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Lottie.asset('assets/splash_screen.json'),
        )
    );
  }
}