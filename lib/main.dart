import 'package:dummy/view/splash_screen_page.dart';
import 'package:flutter/material.dart';

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
        home: const SplashScreen(),
      //..............................................This one removes Debug Tag
      debugShowCheckedModeBanner: false,
    );
  }
}



