import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/user.dart';

import 'components/users_call.dart';
import 'components/item_calls_result.dart';
import 'model/contact.dart';

class CallsMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ListView.builder(
      itemCount: myContact.length + 1,
      itemBuilder: (_, index) {
        if (index == 0)
          return Container(
            padding: const EdgeInsets.only(top: 4, bottom: 8.0),
            child: UserCall(
              users: myUsers.reversed.toList(),
              height: size.height * 0.45,
            ),
          );

        return CallResults(contact: myContact[index - 1]);
      },
    );
  }
}
