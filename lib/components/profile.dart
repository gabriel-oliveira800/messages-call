import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/user.dart';

class Profile extends StatelessWidget {
  final User currentUser;
  final String imageSource;
  const Profile({
    Key key,
    this.currentUser,
    @required this.imageSource,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).accentColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          child: CircleAvatar(
            radius: 20.0,
            backgroundColor: color,
            child: Icon(Icons.add),
            // backgroundImage: NetworkImage(imageSource),
          ),
        ),
        Text('Gabriel Oliveira'),
      ],
    );
  }
}
