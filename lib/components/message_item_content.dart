import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/message.dart';

class MessageItemContent extends StatelessWidget {
  final Message message;
  const MessageItemContent({Key key, @required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          message.user.name,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          '${message.user.number}: ${message.content}',
          overflow: TextOverflow.ellipsis,
        ),
        const Divider(),
      ],
    );
  }
}
