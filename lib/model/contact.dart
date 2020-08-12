import 'package:whatsapp_clone/model/user.dart';

class Contact {
  final User user;
  final bool sucess;
  final String content;

  Contact({this.user, this.content, this.sucess});
}

final List<Contact> myContact = [
  Contact(
    sucess: false,
    content: '8 de agost, 12:45',
    user: myUsers[0],
  ),
  Contact(
    sucess: true,
    content: '23 de out, 16:36',
    user: myUsers[6],
  ),
  Contact(
    sucess: true,
    content: '10 de out, 16:36',
    user: myUsers[2],
  ),
  Contact(
    sucess: false,
    content: '26 de deze, 12:20',
    user: myUsers[5],
  ),
  Contact(
    sucess: false,
    content: '23 de out, 16:36',
    user: myUsers[4],
  ),
  Contact(
    sucess: false,
    content: '8 de agost, 12:45',
    user: myUsers[3],
  ),
  Contact(
    sucess: true,
    content: '10 de out, 16:36',
    user: myUsers[1],
  ),
  Contact(
    sucess: false,
    content: '23 de out, 16:36',
    user: myUsers[8],
  ),
  Contact(
    sucess: false,
    content: '8 de agost, 12:45',
    user: myUsers[7],
  ),
];
