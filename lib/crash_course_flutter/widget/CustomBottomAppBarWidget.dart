import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 5.0,
      shape: const CircularNotchedRectangle(),
      color: Colors.blueGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 5.0, bottom: 5.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.home_filled,
                  color: Colors.white,
                ),
                Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(right: 40.0, top: 5.0, bottom: 5.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.heart_broken,
                  color: Colors.white,
                ),
                Text(
                  "Liked",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 5.0, bottom: 5.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.shop_2,
                  color: Colors.white,
                ),
                Text(
                  "Video",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(right: 10.0, top: 5.0, bottom: 5.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.person_sharp,
                  color: Colors.white,
                ),
                Text(
                  "Profile",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}