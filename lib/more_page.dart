import 'package:dummy/API/view/api_home.dart';
import 'package:dummy/GDSC/view/GDSC_home_page.dart';
import 'package:dummy/OCR/view/home_page.dart';
import 'package:dummy/productBox_page.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'buttonLayouts_page.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Profile',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
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
              //..................................Navigator.pop is not mandatory
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ButtonLayouts()
                  ),
                );
              },
              child: const Text('Button Layouts'),
            ),
          ),
          Padding(
            //.................................................Button ProductBox
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
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
              //..................................Navigator.pop is not mandatory
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GDSC_Home()
                  ),
                );
              },
              child: const Text('GDSC Travel App'),
            ),
          ),
          Padding(
            //...................................................Button OCR_Home
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              //..................................Navigator.pop is not mandatory
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OCR_Home()
                  ),
                );
              },
              child: const Text('OCR Project'),
            ),
          ),
          Padding(
            //..................................................Button API_Home
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              //..................................Navigator.pop is not mandatory
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ApiHome()
                  ),
                );
              },
              child: const Text('API Integration'),
            ),
          ),
        ],
      ),
    );
  }
}