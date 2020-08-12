import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/message.dart';
import 'package:whatsapp_clone/model/user.dart';

import 'profile.dart';

class MessageItem extends StatelessWidget {
  final Message message;
  const MessageItem({
    Key key,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Profile(
            height: 62,
            hasBorder: false,
            imageSource: myUsers[6].avatar,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    myUsers[0].name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${myUsers[0].number}: Hello, whats to name ?',
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Divider()
                ],
              ),
            ),
          ),
          Container(
            height: 80,
            color: Colors.red,
            child: Text(
              '12:00',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
      padding: const EdgeInsets.only(left: 6),
    );
  }
}
