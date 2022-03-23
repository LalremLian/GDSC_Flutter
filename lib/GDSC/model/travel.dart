import 'package:dummy/GDSC/model/hotel.dart';
import 'package:dummy/GDSC/model/place.dart';

class City {
  String cityName;
  String cityImage;
  String countryName;
  List<Place> cityPlaces;
  List<Hotel> cityHotels;

  City({required this.cityName, required this.cityImage, required this.countryName, required this.cityPlaces,
    required this.cityHotels});

}

List<City> cities = [
  City(
    cityName: "London",
    cityImage: "https://wallpaperaccess.com/full/1124861.jpg",
    countryName: "UK",
    cityPlaces: [
      Place(placeName: "Tower Bridge",
          placeImage: "https://images.pexels.com/photos/726484/pexels-photo-726484.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          description: "Tower Bridge is a Grade I listed combined bascule and suspension bridge in London, built between 1886 and 1894, designed by Horace Jones and engineered by John Wolfe Barry."),
      Place(placeName: "Tower Bridge",
          placeImage: "https://images.pexels.com/photos/726484/pexels-photo-726484.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          description: "Tower Bridge is a Grade I listed combined bascule and suspension bridge in London, built between 1886 and 1894, designed by Horace Jones and engineered by John Wolfe Barry."),
      Place(placeName: "Tower Bridge",
          placeImage: "https://images.pexels.com/photos/726484/pexels-photo-726484.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          description: "Tower Bridge is a Grade I listed combined bascule and suspension bridge in London, built between 1886 and 1894, designed by Horace Jones and engineered by John Wolfe Barry."),
      Place(placeName: "Tower Bridge",
          placeImage: "https://images.pexels.com/photos/726484/pexels-photo-726484.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          description: "Tower Bridge is a Grade I listed combined bascule and suspension bridge in London, built between 1886 and 1894, designed by Horace Jones and engineered by John Wolfe Barry."),
    ],
    cityHotels: [
      Hotel(hotelName: "Inn",
          hotelPrice: "\$12",
          hotelAddress: "Nowhere",
          hotelDescription: "Haunted",
          hotelImage: "https://i2.wp.com/www.differencebetween.com/wp-content/uploads/2016/11/Difference-Between-Lodge-and-Inn-1.jpg?resize=550%2C413&ssl=1"),
      Hotel(hotelName: "Inn",
          hotelPrice: "\$15",
          hotelAddress: "Nowhere",
          hotelDescription: "Haunted",
          hotelImage: "https://i2.wp.com/www.differencebetween.com/wp-content/uploads/2016/11/Difference-Between-Lodge-and-Inn-1.jpg?resize=550%2C413&ssl=1"),
      Hotel(hotelName: "Inn",
          hotelPrice: "\$34",
          hotelAddress: "Nowhere",
          hotelDescription: "Haunted",
          hotelImage: "https://i2.wp.com/www.differencebetween.com/wp-content/uploads/2016/11/Difference-Between-Lodge-and-Inn-1.jpg?resize=550%2C413&ssl=1"),
      Hotel(hotelName: "Inn",
          hotelPrice: "\$6",
          hotelAddress: "Nowhere",
          hotelDescription: "Haunted",
          hotelImage: "https://i2.wp.com/www.differencebetween.com/wp-content/uploads/2016/11/Difference-Between-Lodge-and-Inn-1.jpg?resize=550%2C413&ssl=1"),
    ],
  ),
  City(
    cityName: "King's Road",
    cityImage: "https://static.independent.co.uk/2020/11/18/17/newFile.jpg?quality=75&width=982&height=726&auto=webp",
    countryName: "UK",
    cityPlaces: [
      Place(placeName: "Tower Bridge",
          placeImage: "https://images.pexels.com/photos/726484/pexels-photo-726484.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          description: "Tower Bridge is a Grade I listed combined bascule and suspension bridge in London, built between 1886 and 1894, designed by Horace Jones and engineered by John Wolfe Barry."),
      Place(placeName: "Tower Bridge",
          placeImage: "https://images.pexels.com/photos/726484/pexels-photo-726484.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          description: "Tower Bridge is a Grade I listed combined bascule and suspension bridge in London, built between 1886 and 1894, designed by Horace Jones and engineered by John Wolfe Barry."),
    ],
    cityHotels: [
      Hotel(hotelName: "Inn",
          hotelPrice: "\$12",
          hotelAddress: "Nowhere",
          hotelDescription: "Haunted",
          hotelImage: "https://i2.wp.com/www.differencebetween.com/wp-content/uploads/2016/11/Difference-Between-Lodge-and-Inn-1.jpg?resize=550%2C413&ssl=1"),
      Hotel(hotelName: "Inn",
          hotelPrice: "\$2",
          hotelAddress: "Nowhere",
          hotelDescription: "Haunted",
          hotelImage: "https://i2.wp.com/www.differencebetween.com/wp-content/uploads/2016/11/Difference-Between-Lodge-and-Inn-1.jpg?resize=550%2C413&ssl=1"),
    ],
  ),
  City(
    cityName: "Baker Street",
    cityImage: "https://globetotting.com/wp-content/uploads/2022/03/LondonStreetsFlaskWalk-min.jpg",
    countryName: "UK",
    cityPlaces: [
      Place(placeName: "Tower Bridge",
          placeImage: "https://images.pexels.com/photos/726484/pexels-photo-726484.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          description: "Tower Bridge is a Grade I listed combined bascule and suspension bridge in London, built between 1886 and 1894, designed by Horace Jones and engineered by John Wolfe Barry."),
      Place(placeName: "Tower Bridge",
          placeImage: "https://images.pexels.com/photos/726484/pexels-photo-726484.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          description: "Tower Bridge is a Grade I listed combined bascule and suspension bridge in London, built between 1886 and 1894, designed by Horace Jones and engineered by John Wolfe Barry."),
    ],
    cityHotels: [
      Hotel(hotelName: "Inn",
          hotelPrice: "\$9",
          hotelAddress: "Nowhere",
          hotelDescription: "Haunted",
          hotelImage: "https://i2.wp.com/www.differencebetween.com/wp-content/uploads/2016/11/Difference-Between-Lodge-and-Inn-1.jpg?resize=550%2C413&ssl=1"),
      Hotel(hotelName: "Inn",
          hotelPrice: "\$5.2",
          hotelAddress: "Nowhere",
          hotelDescription: "Haunted",
          hotelImage: "https://i2.wp.com/www.differencebetween.com/wp-content/uploads/2016/11/Difference-Between-Lodge-and-Inn-1.jpg?resize=550%2C413&ssl=1"),
    ],
  ),
  City(
    cityName: "Abbey Road",
    cityImage: "https://www.themontcalm.com/blog/wp-content/uploads/2018/04/london-street-1280x720.jpg",
    countryName: "UK",
    cityPlaces: [
      Place(placeName: "Tower Bridge",
          placeImage: "https://images.pexels.com/photos/726484/pexels-photo-726484.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          description: "Tower Bridge is a Grade I listed combined bascule and suspension bridge in London, built between 1886 and 1894, designed by Horace Jones and engineered by John Wolfe Barry."),
      Place(placeName: "Tower Bridge",
          placeImage: "https://images.pexels.com/photos/726484/pexels-photo-726484.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          description: "Tower Bridge is a Grade I listed combined bascule and suspension bridge in London, built between 1886 and 1894, designed by Horace Jones and engineered by John Wolfe Barry."),
    ],
    cityHotels: [
      Hotel(hotelName: "Inn",
          hotelPrice: "\$2",
          hotelAddress: "Nowhere",
          hotelDescription: "Haunted",
          hotelImage: "https://i2.wp.com/www.differencebetween.com/wp-content/uploads/2016/11/Difference-Between-Lodge-and-Inn-1.jpg?resize=550%2C413&ssl=1"),
      Hotel(hotelName: "Inn",
          hotelPrice: "\$10",
          hotelAddress: "Nowhere",
          hotelDescription: "Haunted",
          hotelImage: "https://i2.wp.com/www.differencebetween.com/wp-content/uploads/2016/11/Difference-Between-Lodge-and-Inn-1.jpg?resize=550%2C413&ssl=1"),
    ],
  ),
];