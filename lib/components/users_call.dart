import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/user.dart';

import 'item_contact.dart';

class UserCall extends StatelessWidget {
  final double height;
  final List<User> users;

  const UserCall({
    Key key,
    @required this.users,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: ListView.builder(
            itemCount: users.length + 1,
            itemBuilder: (_, index) {
              if (index == users.length) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: [
                        const Divider(),
                        Text('More than..'),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                );
              }
              return Padding(
                child: ItemContact(user: myUsers[index]),
                padding: const EdgeInsets.symmetric(vertical: 4.0),
              );
            },
          ),
        ),
      ),
    );
  }
}
