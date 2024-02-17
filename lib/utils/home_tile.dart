import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rental_app/utils/fonts.dart';

class HomeTile extends StatelessWidget {
  HomeTile({
    super.key,
    required this.tileName,
    required this.onTapp,
    required this.svgSrc, required this.currentIndex,
  });
  final String tileName;
  VoidCallback onTapp;
  final List<dynamic> svgSrc;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0).copyWith(top: 10, bottom: 0),
      child: Column(
        children: [
          GestureDetector(
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.blue.withOpacity(1),
                          Colors.lightBlue.withOpacity(0.7),
                          Colors.white,
                        ],
                      ),
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                ),
                Positioned(
                    left: svgSrc[currentIndex][3],
                    top: svgSrc[currentIndex][1],
                    child: SvgPicture.asset(
                      svgSrc[currentIndex][0],
                      width: svgSrc[currentIndex][2],
                    ))
              ],
            ),
            onTap: () {
              onTapp();
            },
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            tileName,
            style: Fonts.greetFont,
          )
        ],
      ),
    );
  }
}
