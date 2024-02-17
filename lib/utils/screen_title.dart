import 'package:flutter/material.dart';

class TopScreenTitle extends StatelessWidget {
  const TopScreenTitle({super.key, required this.screenName});
  final String screenName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 60,
      child: Text(
        screenName,
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      ),
      color: Colors.red,
    );
  }
}
