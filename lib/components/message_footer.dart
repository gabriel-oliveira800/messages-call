import 'package:flutter/material.dart';

import '../constants.dart';
import 'notification.dart';

class Footer extends StatelessWidget {
  final String hours;
  final int countMessage;
  const Footer({
    Key key,
    this.countMessage,
    @required this.hours,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          hours,
          style: TextStyle(
            color: countMessage != null ? lightGreen : null,
            fontSize: 12,
          ),
        ),
        SizedBox(height: 8),
        if (countMessage != null)
          CountNotification(countMessage: countMessage.toString())
      ],
    );
  }
}
