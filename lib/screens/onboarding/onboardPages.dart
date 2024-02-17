import 'package:flutter/material.dart';
import 'package:rental_app/utils/fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageOne extends StatelessWidget {
  VoidCallback ontap;
  PageOne({super.key, required this.ontap});
  // String assetName = 'assets/images/on1.svg';
  // final Widget svg = SvgPicture.asset(assetName, semanticsLabel: 'Acme Logo');
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Container(
            height: 55,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://shorturl.at/aGPU4"),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: SvgPicture.asset("./assets/images/on1.svg",
                semanticsLabel: 'Acme Logo'),
            height: 350,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              "Making your Travel\nConvenient",
              style: Fonts.onboardTitle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            child: Text(
              "Vehicles right on the tip of your fingers!",
              style: Fonts.onboardSubtitle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 80,
          ),
          GestureDetector(
            onTap: ontap,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 10,
              ),
              height: 50,
              width: 150,
              child: Center(
                  child: Text(
                "Next",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  PageTwo({super.key, required this.ontap});
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://shorturl.at/aGPU4"),
              ),
            ),
          ),
          Container(
            child: SvgPicture.asset("./assets/images/on2.svg",
                semanticsLabel: 'Acme Logo'),
            height: 350,
          ),
          Container(
            child: Text(
              "Rent. Whenever.\nWherever.",
              style: Fonts.onboardTitle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            child: Text(
              "A wide varieties of vehicles\nto choose from!",
              style: Fonts.onboardSubtitle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 115,
          ),
          GestureDetector(
            onTap: ontap,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 10,
              ),
              height: 50,
              width: 150,
              child: Center(
                  child: Text(
                "Next",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class PageThree extends StatelessWidget {
   PageThree({super.key,required this.ontap});
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://shorturl.at/aGPU4"),
              ),
            ),
          ),
          Container(
            child: SvgPicture.asset("./assets/images/on3.svg",
                semanticsLabel: 'Acme Logo'),
            height: 350,
          ),
          Container(
            child: Text(
              "Book your rides in\none click.",
              style: Fonts.onboardTitle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            child: Text(
              "No more scrambling to find the\nbest rides!",
              style: Fonts.onboardSubtitle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 110,
          ),
          GestureDetector(
            onTap: ontap,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 10,
              ),
              height: 50,
              width: 250,
              child: Center(
                  child: Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
