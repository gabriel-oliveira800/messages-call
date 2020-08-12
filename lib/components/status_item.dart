import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/status.dart';
import 'package:whatsapp_clone/model/user.dart';

import 'profile.dart';

class StatusItem extends StatelessWidget {
  final User currentUser;
  final StatusModel status;

  const StatusItem({
    Key key,
    this.currentUser,
    @required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Profile(
              imageSource: 'null',
            ),
          ],
        ),
      ),
    );
  }
}
