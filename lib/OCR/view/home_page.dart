// import 'package:flutter/material.dart';
// import 'package:flutter_mobile_vision/flutter_mobile_vision.dart';
//
// class OCR_Home extends StatefulWidget {
//   const OCR_Home({Key? key}) : super(key: key);
//
//   @override
//   State<OCR_Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<OCR_Home> {
//
//   //...................................................................Variables
//   List<OcrText> listText = <int>[].cast<OcrText>();
//   bool isInitialized = false;
//
//   //...........................................................Created initState
//   @override
//   void initState() {
//
//     super.initState();
//     //..........................................................Calling a method
//     scanText();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             const Text('Hello'),
//             ListView.builder(
//                 itemBuilder: (context,index){
//                   return Column(
//                     children: [
//                       //.........................ClipRRect is for rounded corner
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(30),
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           //...............................................Image
//                           child: Text(listText[index].value),
//                         ),
//                       )
//                     ],
//                   );
//                 }
//             )
//           ],
//         ),
//
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: scanText,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
//
//   void scanText() async{
//     //..........................................Initializing FlutterMobileVision
//     FlutterMobileVision.start().then((value){
//       isInitialized = true;
//     });
//
//     listText = await FlutterMobileVision.read(
//       waitTap: true,
//       fps: 5,
//       multiple: true,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_mobile_vision/flutter_mobile_vision.dart';

class OCR_Home extends StatefulWidget {
  OCR_Home({required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _OCR_Home createState() => _OCR_Home();
}

class _OCR_Home extends State<OCR_Home> {
  int _counter = 0;

  bool isInitilized = false;
  @override
  void initState() {
    FlutterMobileVision.start().then((value) {
      isInitilized = true;
    });
    super.initState();
  }

  _startScan() async {
    List<OcrText> list = [];

    try {
      list = await FlutterMobileVision.read(
        waitTap: true,
        fps: 5,
        multiple: true,
      );

      for (OcrText text in list) {
        print('valueis ${text.value}');
      }
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startScan,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
