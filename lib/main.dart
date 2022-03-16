import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application................................
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home());
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Project 'F'"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.network(
              "https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png",
              height: 200,
              width: 320),
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
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
              child: const Text('Submit'))
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
              //Navigator.pop is not mandatory..................................
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ),
          Padding(
            //Button Layouts.............................................
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              //Navigator.pop is not mandatory......................
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ButtonLayouts()),
                );
              },
              child: const Text('Button Layouts'),
            ),
          ),
          Padding(
            //Button Layouts.............................................
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              //Navigator.pop is not mandatory......................
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
        ],
      ),
    );
  }
}

class ButtonLayouts extends StatelessWidget {
  const ButtonLayouts({Key? key}) : super(key: key);

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
          Container(
            decoration: const BoxDecoration(
                border: Border(
              top: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
              left: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
              right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
              bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
            )),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Color(0xffffdfdfdf)),
                  left: BorderSide(width: 1.0, color: Color(0xffffdfdfdf)),
                  right: BorderSide(width: 1.0, color: Color(0xffff7f7f7f)),
                  bottom: BorderSide(width: 1.0, color: Color(0xffff7f7f7f)),
                ),
                color: Colors.grey,
              ),
              child: const Text(
                'OK',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.network(
                image,
                width: 120,
                height: 120,
              ),
              Expanded(
                  child: Container(
                    height: 120,
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(name,
                              style: const TextStyle(fontWeight: FontWeight.bold)),
                          Text(description),
                          Text("Price: " + price.toString()),
                        ],
                      )))
            ])));
  }
}
