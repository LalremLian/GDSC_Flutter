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
            //.............................................................Image
            //......................................Hero Widget is for Animation
            Hero(
              tag: widget.city.cityName,
                child: Image.network(widget.city.cityImage,height: 280, width: 380, fit: BoxFit.cover,)),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              //............................................................Text
              child: Text("Attractions",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 120,
              //........................................................ListView
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.city.cityPlaces.length,
                  itemBuilder: (context,index){
                  var placedata = widget.city.cityPlaces[index];
                  return Column(
                    children: [
                      //.........................ClipRRect is for rounded corner
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          //...............................................Image
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
              //............................................................Text
              child: Text("Hotels",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.city.cityHotels.length,
                itemBuilder: (context,index){
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        //.................................................Image
                        child: Image.network(widget.city.cityHotels[index].hotelImage,
                        height: 120,
                        width: 150,
                        fit: BoxFit.cover,),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 50,
                        ),
                        Text("Name: " + widget.city.cityHotels[index].hotelName),
                        Text("Description: " + widget.city.cityHotels[index].hotelDescription),
                        Text("Address: " + widget.city.cityHotels[index].hotelAddress),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            //..............................................Button
                            child: Container(
                              height: 30,
                              width: 60,
                              color: Colors.blue[300]?.withOpacity(.8),
                              child: Center(child: Text(widget.city.cityHotels[index].hotelPrice)),
                            ),
                          ),
                        )
                      ],
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

