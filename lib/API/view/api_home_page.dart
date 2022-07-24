import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ApiMainPage extends StatelessWidget {
  const ApiMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose your desires')
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
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
                  onPressed: () {
                    Get.toNamed("/getMethod");
                  },
                  child: const Text('GET Method'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(29, 135, 167, 1),
                  ),
                  onPressed: () {
                    Get.toNamed("/postMethod");
                  },
                  child: const Text('POST Method'),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
