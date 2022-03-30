import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatefulWidget {
  CardSwiper({required this.title}) : super();

  final String title;

  @override
  _CardSwiperState createState() => _CardSwiperState();
}

class _CardSwiperState extends State<CardSwiper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          //......................................................Card Style One
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SizedBox(
              height: 200,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      "https://wallpaperaccess.com/full/7316.jpg",
                      fit: BoxFit.fill,
                    ),
                  );
                },
                itemCount: 3,
                viewportFraction: 0.8,
                scale: 0.9,
                //........................................Needed for bottom Dots
                pagination: const SwiperPagination(),
                //.......................................Needed for bottom Arrow
                control: const SwiperControl(),
              ),
            ),
          ),
          //......................................................Card Style Two
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SizedBox(
              height: 200,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      "https://wallpaperaccess.com/full/7316.jpg",
                      fit: BoxFit.fill,
                    ),
                  );
                },
                itemCount: 10,
                itemWidth: 300.0,
                layout: SwiperLayout.STACK,
              ),
            ),
          ),
          //....................................................Card Style Three
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SizedBox(
              height: 200,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      "https://wallpaperaccess.com/full/7316.jpg",
                      fit: BoxFit.fill,
                    ),
                  );
                },
                itemCount: 10,
                itemWidth: 300.0,
                itemHeight: 400.0,
                layout: SwiperLayout.TINDER,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
