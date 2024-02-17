import 'package:flutter/material.dart';
import 'package:rental_app/utils/fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    required this.names,
    required this.currentIndex,
  });
  final List<dynamic> names;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 8, offset: Offset(1, 2))
            ],
            borderRadius: BorderRadius.circular(15)),
        height: 130,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8),
                      child: Wrap(
                        direction: Axis.vertical,
                        children: [
                          Text(
                            names[currentIndex][0],
                            style: Fonts.titleFont,
                          ),
                          Text(
                            names[currentIndex][4]
                                ? "~ Rs. " +
                                    names[currentIndex][1] +
                                    " | " +
                                    "Brand New"
                                : "~ Rs. " +
                                    names[currentIndex][1] +
                                    " | " +
                                    "Like New",
                            style: Fonts.subtitleFont,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.bookmark_outline),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RatingBar.builder(
                    
                    itemSize: 18,
                    initialRating: 3,
                    
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
