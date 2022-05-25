import 'package:dummy/view/more_page.dart';
import 'package:dummy/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Project 'Minion'"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          //.....................................Circular BoxShape with a Shadow
          Container(
            width: 340.0,
            height: 250.0,
            alignment: Alignment.center,
            //color: Colors.amber,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(color: Colors.grey),
                shape: BoxShape.circle,
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png")),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3,
                      spreadRadius: 8,
                      offset: Offset(4, 4))
                ]),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Me Minion",
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.amber),
          ),
          const Text(
            "Me want Banana!",
            style: TextStyle(fontSize: 20, color: Colors.orangeAccent),
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 40,
              color: Colors.white70,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.account_circle),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("User Name"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 40,
              color: Colors.white70,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.account_circle),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("User Name"),
                ],
              ),
            ),
          ),
          Container(
            height: 20,
            width: 380,
            color: Colors.deepPurple,
          ),
          Container(
            height: 20,
            width: 380,
            color: Colors.blueAccent,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MorePage()),
                );
              },
              child: const Text('More Options'))
        ],
      ),
    );
  }
}
