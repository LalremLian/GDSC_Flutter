import 'package:dummy/view/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  //..............................................................Custom Padding
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  final name = 'Calvert';
  final email = 'calvert@gmail.com';
  final urlImage = "https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: const Color.fromRGBO(29, 135, 167, 1),
        child: ListView(
          //................................................Initializing padding
          padding: padding,
          children: <Widget>[
            buildHeader(
              urlImage,
              name: name,
              email: email,
            ),
            //...............................................Items of DrawerMenu
            const SizedBox(
              height: 16.0,
            ),
            buildMenuItem(
              text: 'People',
              icon: Icons.people,
              //........... 0 will generate a unique number(OnItemClickListener)
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(
              height: 16.0,
            ),
            buildMenuItem(
              text: 'Favourites',
              icon: Icons.favorite_border,
            ),
            const SizedBox(
              height: 16.0,
            ),
            buildMenuItem(
              text: 'Workflow',
              icon: Icons.workspaces_outline,
            ),
            const SizedBox(
              height: 16.0,
            ),
            buildMenuItem(
              text: 'Updates',
              icon: Icons.update,
            ),
            //...................................................Divider Section
            const SizedBox(
              height: 24.0,
            ),
            const Divider(
              color: Colors.white70,
            ),
            const SizedBox(
              height: 24.0,
            ),

            const SizedBox(
              height: 16.0,
            ),
            buildMenuItem(
              text: 'Plugins',
              icon: Icons.account_tree_outlined,
            ),
            const SizedBox(
              height: 16.0,
            ),
            buildMenuItem(
              text: 'Notifications',
              icon: Icons.notifications_outlined,
            ),
          ],
        ),
      ),
    );
  }

  buildMenuItem({
    required String text,
    required IconData icon,
    //....................................................onClicked is a Handler
    VoidCallback? onClicked,
  }) {
    const color = Colors.white;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: const TextStyle(color: color),
      ),
      onTap: onClicked,
    );
  }

  selectedItem(BuildContext context, int i) {
    Navigator.of(context).pop();
    switch (i) {
      case 0:
        Navigator.of(context).push(
            CupertinoPageRoute(builder: (context) => const Home(),
            ));
        break;
    }
  }

  buildHeader(String urlImage, {required String name, required String email}) =>
      Container(
        padding: padding.add(const EdgeInsets.symmetric(vertical: 40)),
        child: Row(
          children: [
            CircleAvatar(radius: 30,
              backgroundImage: NetworkImage(urlImage),),
            const SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Text(email),
              ],
            )
          ],
        ),
      );
}
