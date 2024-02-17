import 'package:flutter/material.dart';
import 'package:rental_app/utils/fonts.dart';
import 'package:rental_app/utils/noti_tile.dart';
import 'package:rental_app/utils/request_tile.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<dynamic> notificationText = [
    ['Hunter 350', true],
    ['Honda CB450 RS', true],
    ['Bhaktapur Lounge', false],
    ['Royal Enfield Classic 350', true],
    ['Soltee Hotel', false],
    ['Hotel Sagarmatha', false],
  ];
  List<String> users = [
    'Frankin Jones',
    'Robin Williams',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Notifications",
                  style: Fonts.tileTitle,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 6,
              itemBuilder: (context, index) {
                return (index > 1)
                    ? NotificationTile(
                        notificationTitle: (notificationText[index][1])
                            ? "You might like this new listing!"
                            : "Recommended Accomodations for you!",
                        mainFocus: notificationText[index - 2][0],
                        tileIcon: (notificationText[index - 2][1])
                            ? Icons.pedal_bike_rounded
                            : Icons.hotel,
                      )
                    : RequestTile(
                        onMoreTap: () {},
                        onAccept: () {},
                        onReject: () {
                          setState(() {
                            users.removeAt(index);
                          });
                        },
                        userName: users[index],
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
