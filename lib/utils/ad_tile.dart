import 'package:flutter/material.dart';

class AdTile extends StatelessWidget {
  const AdTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: EdgeInsets.all(2),
        height: 150,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Ad",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "X",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
            ),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://blog.khalti.com/wp-content/uploads/2022/08/Blog-Size_1080x675-px-7.png"))),
      ),
    );
  }
}
