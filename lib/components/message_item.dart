import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/message.dart';

import 'message_footer.dart';
import 'message_item_content.dart';
import 'profile.dart';

class MessageItem extends StatelessWidget {
  final Message message;
  const MessageItem({Key key, @required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(right: 6),
              child: Profile(
                height: 62,
                hasBorder: false,
                imageSource: message.user.avatar,
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: MessageItemContent(message: message),
          ),
          Flexible(
            flex: 1,
            child: Footer(
              hours: message.hours,
              countMessage: message.countMessage,
            ),
          ),
        ],
      ),
    );
  }
}
