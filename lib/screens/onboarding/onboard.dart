import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rental_app/screens/homepage.dart';
import 'package:rental_app/screens/onboarding/onboardPages.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  // ignore: unused_field
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider(
            carouselController: _controller,
            items: [
              PageOne(
                ontap: () {
                  setState(() {
                    _controller.nextPage();
                  });
                },
              ),
              PageTwo(ontap: () {
                setState(() {
                  _controller.nextPage();
                });
              }),
              PageThree(
                ontap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                },
              ),
            ],
            options: CarouselOptions(
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                height: MediaQuery.of(context).size.height,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ],
      ),
    );
  }
}
