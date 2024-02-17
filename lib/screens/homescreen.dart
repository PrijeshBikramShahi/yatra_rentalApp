import 'package:flutter/material.dart';
import 'package:rental_app/screens/Rental/cycle.dart';
import 'package:rental_app/screens/Rental/four_wheeler.dart';
import 'package:rental_app/screens/Rental/two_wheeler.dart';
import 'package:rental_app/screens/profile.dart';
import 'package:rental_app/utils/explore_tile.dart';
import 'package:rental_app/utils/fonts.dart';
import 'package:rental_app/utils/home_tile.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List _exploreImg = [
    'https://shorturl.at/kTWY7',
    'https://shorturl.at/aiGHV',
    'https://shorturl.at/efnQX',
  ];
  List _exploreTitle = [
    'Recommended Hotels',
    'Travel Destinations',
    'Popular',
  ];
  List _tileName = [
    ['Bike', ''],
    ['Car', ''],
    ['Bicycles', ''],
  ];
  List _rentalPages = [
    TwoWheeler(),
    FourWheeler(),
    Bicycle(),
  ];
  List<dynamic> _svgSrc = [
    ['assets/images/bike.svg', 10.0, 100.0, 0.0],
    ['assets/images/car1.svg', 30.0, 110.0, -5.0],
    ['assets/images/cycle.svg', 5.0, 90.0, 5.0]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        shadowColor: Colors.black.withOpacity(0.4),
        title: Image.network(
          "https://shorturl.at/aGPU4",
          height: 35,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0, top: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileSection(),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 25,
                child: Icon(
                  Icons.person,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 15),
                  child: Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(
                        "Rent a Ride",
                        style: Fonts.tileTitle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 15, top: 0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _rentalPages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: HomeTile(
                      currentIndex: index,
                      svgSrc: _svgSrc,
                      tileName: _tileName[index][0],
                      onTapp: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => _rentalPages[index],
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0).copyWith(top: 15),
            child: SizedBox(
              height: 10,
              child: Container(
                color: Colors.grey.withOpacity(0.2),
                height: 5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Row(
              children: [
                Container(
                  child: Text(
                    "Explore",
                    style: Fonts.tileTitle,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                child: ListView.builder(
                  clipBehavior: Clip.antiAlias,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  physics: RangeMaintainingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ExploreTile(
                      imgSrc: _exploreImg[index],
                      tileTitle: _exploreTitle[index],
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
