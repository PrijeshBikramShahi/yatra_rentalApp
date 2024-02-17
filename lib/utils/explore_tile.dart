import 'package:flutter/material.dart';
import 'package:rental_app/utils/fonts.dart';

class ExploreTile extends StatelessWidget {
  const ExploreTile({super.key, required this.tileTitle, required this.imgSrc});
  final String tileTitle;
  final String imgSrc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        width: MediaQuery.of(context).size.width / 1.2,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0.0, bottom: 10),
              child: Text(
                tileTitle,
                style: Fonts.titleFont,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(imgSrc))),
              height: 360,
            )
          ],
        ),
      ),
    );
  }
}
