import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/profile.dart';
import 'package:whatsapp_clone/model/contact.dart';

import '../constants.dart';

class CallResults extends StatelessWidget {
  final Contact contact;
  const CallResults({Key key, @required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          Profile(
            height: 62,
            borderColor: Colors.black26,
            imageSource: contact.user.avatar,
          ),
          SizedBox(width: 12),
          Flexible(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  contact.user.number,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Transform.rotate(
                      angle: !contact.sucess ? 90 : 45,
                      child: Icon(
                        !contact.sucess
                            ? Icons.arrow_back
                            : Icons.arrow_forward,
                        size: 18,
                        color: !contact.sucess ? lightGreen : Colors.red,
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      contact.content,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Icon(
            Icons.delete,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
