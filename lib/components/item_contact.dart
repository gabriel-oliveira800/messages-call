import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/user.dart';

import 'profile.dart';

class ItemContact extends StatelessWidget {
  final User user;
  const ItemContact({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Profile(
              height: 62,
              borderColor: Colors.black26,
              imageSource: user.avatar,
            ),
            SizedBox(width: 12),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  user.number,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            const Spacer(),
            getIcon(Icons.call, color),
            const SizedBox(width: 8),
            getIcon(Icons.videocam, color),
          ],
        ),
      ],
    );
  }

  Widget getIcon(IconData icon, Color color) => Icon(icon, color: color);
}
