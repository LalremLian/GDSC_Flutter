import 'package:dummy/GDSC/model/travel.dart';
import 'package:dummy/crash_course_flutter/widget/CustomBottomAppBarWidget.dart';
import 'package:dummy/crash_course_flutter/widget/ShowDialogWidget.dart';
import 'package:flutter/material.dart';

import '../widget/DrawerWidget.dart';

class FlutterTutorial extends StatelessWidget {
  FlutterTutorial({Key? key}) : super(key: key);

  int pageIndex = 0;

  List<String> prices = ["12", "7", "5", "13"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text("Crash Tutorial"),
        ),

        //..................................................................Drawer
        drawer: const DrawerWidget(),


      //........................................................ListView-Builder
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {


          //............................................................ListTile
          return ListTile(
            leading: CircleAvatar(
              child: Text(cities[index].cityName[index][0]),
            ),
            title: Text(cities[index].cityName),
            subtitle: Text(cities[index].countryName),
            trailing: Text("\$" + prices[index]),
          );
        },
      ),


        //..................................................Floating-Action-Button
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          //elevation: 0,
          onPressed: () {
            //..........................................................ShowDialog
            showDialog(context: context, builder: (_) => const ShowDialog());
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.blueGrey.shade300,
        ),

        //.....................................................BottomNavigationBar
        bottomNavigationBar: CustomBottomAppBar(
          context: context,
        ));
  }
}