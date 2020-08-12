import 'package:flutter/material.dart';

import '../constants.dart';

class AddStatusButton extends StatelessWidget {
  final Function onTap;
  const AddStatusButton({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 3.0, color: Colors.black54),
        ),
        child: CircleAvatar(
          radius: 48 / 2,
          backgroundColor: lightGreen,
          child: Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
