import 'package:flutter/material.dart';

class MainBodyStateful extends StatefulWidget {
  const MainBodyStateful({Key? key}) : super(key: key);

  @override
  State<MainBodyStateful> createState() => _MainBodyStatefulState();
}

class _MainBodyStatefulState extends State<MainBodyStateful> {
  bool iconState = false;
  int pageIndex = 0;

  List<String> prices = ["12", "7", "5", "13"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CustomStateful Widget"),
      ),
      body: ListTile(
          title: const Text("City name"),
          trailing: IconButton(
            icon: iconState? const Icon((Icons.favorite)) : const Icon((Icons.favorite_border)),
            onPressed: () {
              setState ( () => iconState = !iconState);
            },)
      ),
    );
  }
}
