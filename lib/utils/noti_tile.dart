import 'package:flutter/material.dart';
import 'package:rental_app/utils/fonts.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile(
      {super.key,
      required this.notificationTitle,
      required this.mainFocus,
      required this.tileIcon});
  final String notificationTitle;
  final String mainFocus;
  final IconData tileIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 4,
                offset: Offset(1, 2),
                spreadRadius: 1)
          ],
          color: Color.fromARGB(255, 146, 206, 246).withOpacity(1),
          border: Border.all(),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(notificationTitle,style: Fonts.notificationTitle,),
                  Text(mainFocus + "!",
                      style: Fonts.notificationTitle.copyWith(fontWeight: FontWeight.bold)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Icon(
                  tileIcon,
                  size: 40,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
