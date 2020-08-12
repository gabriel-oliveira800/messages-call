import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/status.dart';
import 'package:whatsapp_clone/model/user.dart';
import 'add_status.dart';
import 'profile.dart';

class StatusItem extends StatelessWidget {
  final User currentUser;
  final StatusModel status;

  const StatusItem({
    Key key,
    this.currentUser,
    @required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: 60,
        width: 120,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  currentUser == null ? status.content : currentUser.avatar,
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  currentUser == null
                      ? Profile(imageSource: status.user.avatar)
                      : AddStatusButton(onTap: () => print('add status')),
                  const Spacer(),
                  Text(
                    currentUser == null ? status.user.name : 'Add status',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
