import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final double height;
  final bool hasBorder;
  final Color borderColor;
  final String imageSource;

  const Profile({
    Key key,
    this.height = 48,
    this.hasBorder = true,
    @required this.imageSource,
    this.borderColor = Colors.black54,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: hasBorder
            ? Border.all(
                width: 3.0,
                color: borderColor,
              )
            : null,
      ),
      child: CircleAvatar(
        radius: height / 2,
        backgroundImage: NetworkImage(imageSource),
      ),
    );
  }
}
