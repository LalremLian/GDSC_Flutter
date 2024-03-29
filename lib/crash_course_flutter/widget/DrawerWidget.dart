import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              foregroundImage: AssetImage("images/profile.png"),
            ),
            accountName: Text("Calvert"),
            accountEmail: Text("blaah@gmail.com"),
          ),
          ListTile(
            leading: const Icon(Icons.voicemail),
            title: const Text("Stateful Widget"),
            onTap: () {
              Get.toNamed("/iconChangerScreen");
            },
          ),
          ListTile(
            leading: const Icon(Icons.voicemail),
            title: const Text("Drop-Down Menu"),
            onTap: () {
              Get.toNamed("/dropdownMenuScreen");
            },
          ),
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: Text("Label"),
          ),
          ListTile(
            leading: const Icon(Icons.voicemail),
            title: const Text("Number3"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.voicemail),
            title: const Text("Number4"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}