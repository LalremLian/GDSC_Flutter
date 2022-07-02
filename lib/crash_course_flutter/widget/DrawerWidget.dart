import 'package:dummy/crash_course_flutter/widget/IconChangerWidget.dart';
import 'package:flutter/material.dart';

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
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MainBodyStateful()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.voicemail),
            title: const Text("Number2"),
            onTap: () {},
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