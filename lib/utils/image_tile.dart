import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  const ImageTile(
      {super.key, required this.imgSrc, required this.currentIndex});
  final List<String> imgSrc;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
        
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
      child: Image.network(imgSrc[currentIndex]),
    );
  }
}
