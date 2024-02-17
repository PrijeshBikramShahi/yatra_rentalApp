import 'package:flutter/material.dart';
import 'package:rental_app/screens/Rental/product_page.dart';

import 'package:rental_app/utils/fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class InfoTileNew extends StatelessWidget {
  InfoTileNew(
      {super.key,
      required this.productName,
      required this.productPrice,
      required this.ontapp,
      required this.imgSrc});
  final String productName;
  final String productPrice;
  final String imgSrc;
  VoidCallback ontapp;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0).copyWith(top: 10),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(imgSrc))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 8),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      productName,
                      style: Fonts.tileTitle,
                    ),
                    Text(
                      "Rs. " + productPrice + "/day",
                      style: Fonts.tilePrice,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0)
                  .copyWith(bottom: 8),
              child: Row(
                children: [
                  RatingBar.builder(
                    itemSize: 18,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (value) {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0)
                  .copyWith(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 34, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    onTap: () {
                      ontapp();
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 45, vertical: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: Text(
                        "Details",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductPage(
                              imgSrc: imgSrc,
                              vehicleName: productName,
                              productPrice: productPrice,
                            ),
                          ));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
