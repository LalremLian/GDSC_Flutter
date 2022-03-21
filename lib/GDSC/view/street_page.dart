import 'package:dummy/GDSC/model/travel.dart';
import 'package:flutter/material.dart';

class Streets extends StatefulWidget {
  final City city;
  Streets({required this.city});

  @override
  State<Streets> createState() => _StreetsState();
}

class _StreetsState extends State<Streets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.city.cityName),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(widget.city.cityImage,height: 280, width: 380, fit: BoxFit.cover,),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Attractions",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 120,
              //color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.city.cityPlaces.length,
                  itemBuilder: (context,index){
                  var placedata = widget.city.cityPlaces[index];
                  return Column(
                    children: [
                      //...........................ClipRRect is for rounded corner
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(placedata.placeImage,
                          height: 100,
                          width: 150,
                          fit: BoxFit.cover,),
                        ),
                      )
                    ],
                  );
                  }),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Hotels",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: widget.city.cityHotels.length,
                itemBuilder: (context,index){
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(widget.city.cityHotels[index].hotelImage,
                        height: 120,
                        width: 150,
                        fit: BoxFit.cover,),
                      ),
                    )
                  ],
                );
                }
            )
          ],
        ),
      ),
    );
  }
}

