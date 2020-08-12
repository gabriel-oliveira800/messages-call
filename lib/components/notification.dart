import 'package:flutter/material.dart';

import '../constants.dart';

class CountNotification extends StatelessWidget {
  final String countMessage;
  const CountNotification({
    Key key,
    @required this.countMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(1.5),
        child: Text(
          countMessage,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
      decoration: BoxDecoration(shape: BoxShape.circle, color: lightGreen),
    );
  }
}
