import 'package:dummy/GDSC/model/travel.dart';
import 'package:dummy/GDSC/view/street_page.dart';
import 'package:flutter/material.dart';

class GDSC_Home extends StatelessWidget {
  const GDSC_Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //.............................................................Stack
            Stack(
              children: [
                //.........................................................Image
                Image.network(
                    "https://media.istockphoto.com/photos/big-ben-and-whitehall-from-trafalgar-square-london-picture-id503564070?b=1&k=20&m=503564070&s=170667a&w=0&h=TpfcfJnpBV6Nz0LAQWAVe-JEa1fqe0jF3IqaX_CaRGs="),
                const Padding(
                  padding: EdgeInsets.only(top: 70, left: 200, right: 20),
                  //........................................................Text
                  child: Text(
                    "Welcome to the Streets of London",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            //..........................................................GirdView
            GridView.builder(
                shrinkWrap: true,
                itemCount: cities.length,
                //.NeverScrollableScrollPhysics make it move the entire screen
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    //........................InkWell is like setOnClickListener
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Streets(city : cities[index])
                            )
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: SizedBox(
                            child: Stack(
                          children: [
                            //......................Hero Widget is for Animation
                            Hero(
                              tag: cities[index].cityName,
                              child: Image.network(cities[index].cityImage,
                                  height: 300, width: 300, fit: BoxFit.cover),
                            ),
                            //......................SizedBox is like a Container
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 40,
                                width: 200,
                                color: Colors.blue[200]?.withOpacity(.7),
                                child: Center(
                                  //........................................Text
                                  child: Text(
                                    cities[index].cityName,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                      ),
                    ),
                  );
                }),
            /*ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.orange,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            )*/
          ],
        ),
      ),
    );
  }
}
