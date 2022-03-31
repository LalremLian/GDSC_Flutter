import 'dart:async';

import 'package:dummy/view/bottom_nav_bar_page.dart';
import 'package:dummy/view/dashboard_page.dart';
import 'package:dummy/view/home_page.dart';
import 'package:dummy/view/splash_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //...........................Material widget is the root of your application
    return MaterialApp(
        title: 'Dummy',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: const Home()
        // home: const BottomNavBar(),
        home: const MyHomePage(),
      //..............................................This one removes Debug Tag
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => SplashScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Lottie.asset('assets/splash_screen.json'),
        )
    );
  }
}


