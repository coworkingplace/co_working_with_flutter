import 'package:demo_homepage/models/data_model.dart';
// import 'package:realestateapp/models/data_model.dart';

class Constants {
  static List<House> houseList = [
    House(
      id: 1,
      amount: 1000000,
      address: 'Jenison, MI 49428, SF',
      bedrooms: 3,
      bathrooms: 2,
      squarefoot: 1.416,
      garages: 2,
      kitchen: 1,
    ),
    House(
      id: 2,
      amount: 2000000,
      address: 'Delhi, MI 55555, SF',
      bedrooms: 4,
      bathrooms: 4,
      squarefoot: 2.416,
      garages: 3,
      kitchen: 2,
    ),
    House(
      id: 3,
      amount: 3000000,
      address: 'Mumbai, MI 49428, SF',
      bedrooms: 5,
      bathrooms: 2,
      squarefoot: 3.416,
      garages: 2,
      kitchen: 1,
    ),
    House(
      id: 4,
      amount: 4000000,
      address: 'Pune, MI 55555, SF',
      bedrooms: 3,
      bathrooms: 4,
      squarefoot: 4.416,
      garages: 3,
      kitchen: 2,
    ),
    House(
      id: 5,
      amount: 5000000,
      address: 'Rajkot, MI 49428, SF',
      bedrooms: 4,
      bathrooms: 2,
      squarefoot: 5.416,
      garages: 2,
      kitchen: 1,
    ),
    House(
      id: 6,
      amount: 6000000,
      address: 'Bhuj, MI 55555, SF',
      bedrooms: 5,
      bathrooms: 4,
      squarefoot: 6.416,
      garages: 3,
      kitchen: 2,
    ),
  ];

  static List<String> imageList = [
    "imgs/house_1.png",
    "imgs/house_2.png",
    "imgs/house_3.png",
    "imgs/house_4.png",
    "imgs/house_5.png",
    "imgs/house_6.png",
    "imgs/house_7.png",
  ];
}
